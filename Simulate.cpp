#include "Simulate.h"

// memory
unsigned char memory[MEM_SIZE] = {0};
// regisiter set
REG reg[32] = {0};
// PC
ULL PC = 0;
ULL endPC = 0;
int exit_flag = 0;
bool Mispredicted = false;
int ALUWait = 0;
bool ALUWaitFinished = false;
bool ALUWaitFinishThisCycle = false;
int btbReplaceIdx = 0;
// instruction string
char InstBuf[100] = "";
int InstCount = 0;
int CycleCount = 0;
int PredictCorrectCount = 0;
float CPI = 0.0f;

// transmission
STAGEMODE StageMode[5], StageModeOld[5];
BTB btb[BTB_SIZE];
IFID IF_ID, IF_ID_old;
IDEX ID_EX, ID_EX_old;
EXMEM EX_MEM, EX_MEM_old;
MEMWB MEM_WB, MEM_WB_old;

void setup()
{
    memset(InstBuf, 0, sizeof(InstBuf));
    Mispredicted = false;
    exit_flag = 0;
    ALUWait = 0;
    ALUWaitFinished = false;
    ALUWaitFinishThisCycle = false;
    btbReplaceIdx = 0;

    for (int i = 0; i < BTB_SIZE; ++i)
        {
            btb[i].valid = false;
        }

    StageMode[STAGE_IF] = MODE_LOAD;
    StageMode[STAGE_ID] = MODE_BUBBLE;
    StageMode[STAGE_EX] = MODE_BUBBLE;
    StageMode[STAGE_MEM] = MODE_BUBBLE;
    StageMode[STAGE_WB] = MODE_BUBBLE;

    for (int i = 0; i < 5; ++i)
        StageModeOld[i] = MODE_BUBBLE;

    for (int i = 0; i < 32; ++i)
        reg[i] = 0;
    memset(memory, 0, MEM_SIZE);

    load_memory();

    PC = mainAddr;
    endPC = mainAddr + mainSize - 3;
    reg[R_gp] = gp;
    reg[R_sp] = P_TO_V(MEM_ED);

    InstCount = 0;
    CycleCount = 0;
    CPI = 0.0f;
    PredictCorrectCount = 0;
}

// load code and data
void load_memory()
{
    memset(memory, 0, sizeof(char) * MEM_SIZE);
    fseek(file, cOffset, SEEK_SET);
    fread(&memory[V_TO_P(cVadr)], 1, cSize, file);
    fseek(file, dOffset, SEEK_SET);
    fread(&memory[V_TO_P(dVadr)], 1, dSize, file);
}

bool simulate_one_step()
{
    if (ALUWait == 0 && PC == endPC)
        {
            StageMode[STAGE_IF] = MODE_BUBBLE;
            bool exit_this_cycle = true;
            for (int i = 1; i < 5; ++i)
                if (StageMode[i] != MODE_BUBBLE)
                    {
                        exit_this_cycle = false;
                        break;
                    }
            if (exit_this_cycle)
                return false;
        }

    reg[0] = 0;  // register zero should alwarys be 0
    Mispredicted = false;

    // set stall
    if (ALUWait > 0)  // wait for division
        {
            StageMode[STAGE_IF] = MODE_STALL;
            StageMode[STAGE_ID] = MODE_STALL;
            StageMode[STAGE_EX] = MODE_STALL;
        }
#ifdef BYPASS
    if (StageMode[STAGE_ID] != MODE_BUBBLE && StageMode[STAGE_EX] == MODE_LOAD &&
        ((IF_ID_old.RegRs1 != R_zero && IF_ID_old.RegRs1 == ID_EX_old.RegDst &&
          (ID_EX_old.Ctrl_WB_RegWrite == REGWRITE_VALM ||
           ((ALUWait > 0 || ALUWaitFinished || ALUWaitFinishThisCycle) &&
            ID_EX_old.Ctrl_WB_RegWrite == REGWRITE_VALE))) ||
         (IF_ID_old.RegRs2 != R_zero && IF_ID_old.RegRs2 == ID_EX_old.RegDst &&
          (ID_EX_old.Ctrl_WB_RegWrite == REGWRITE_VALM ||
           ((ALUWait > 0 || ALUWaitFinished || ALUWaitFinishThisCycle) &&
            ID_EX_old.Ctrl_WB_RegWrite == REGWRITE_VALE)))))
        {
            StageMode[STAGE_IF] = MODE_STALL;
            StageMode[STAGE_ID] = MODE_STALL;
        }
#else
    if (StageMode[STAGE_ID] != MODE_BUBBLE &&
        ((IF_ID_old.RegRs1 != R_zero &&
          ((StageMode[STAGE_EX] == MODE_LOAD && IF_ID_old.RegRs1 == ID_EX_old.RegDst) ||
           (StageMode[STAGE_MEM] == MODE_LOAD && IF_ID_old.RegRs1 == EX_MEM_old.RegDst) ||
           (StageMode[STAGE_WB] == MODE_LOAD && IF_ID_old.RegRs1 == MEM_WB_old.RegDst))) ||
         (IF_ID_old.RegRs2 != R_zero &&
          ((StageMode[STAGE_EX] == MODE_LOAD && IF_ID_old.RegRs2 == ID_EX_old.RegDst) ||
           (StageMode[STAGE_MEM] == MODE_LOAD && IF_ID_old.RegRs2 == EX_MEM_old.RegDst) ||
           (StageMode[STAGE_WB] == MODE_LOAD &&
            IF_ID_old.RegRs2 == MEM_WB_old.RegDst)))))  // data hazard
        {
            StageMode[STAGE_IF] = MODE_STALL;
            StageMode[STAGE_ID] = MODE_STALL;
        }
#endif

    // run
    IF();
    ID();
    EX();
    MEM();
    WB();

    // update bubble
    for (int i = 0; i < 5; ++i)
        {
            StageModeOld[i] = StageMode[i];
            StageMode[i] = MODE_LOAD;
        }
    for (int i = 0; i < 4; ++i)  // pass bubble
        {
            if (StageModeOld[i] == MODE_BUBBLE)
                {
                    StageMode[i + 1] = MODE_BUBBLE;
                }
        }

// set bubble
#ifdef BYPASS
    if (StageModeOld[STAGE_ID] != MODE_BUBBLE)
        {
            if (IF_ID_old.RegRs1 != R_zero)
                {
                    if (StageModeOld[STAGE_EX] == MODE_LOAD && IF_ID_old.RegRs1 == ID_EX_old.RegDst)
                        {
                            switch (ID_EX_old.Ctrl_WB_RegWrite)
                                {
                                    case REGWRITE_VALE:
                                        {
                                            if ((ALUWait > 0 || ALUWaitFinished ||
                                                 ALUWaitFinishThisCycle))
                                                {
                                                    StageMode[STAGE_EX] = MODE_BUBBLE;
                                                }
                                            else
                                                {

                                                    ID_EX.VRs1 = EX_MEM.ALU_out;
#ifdef PRINT_BYPASS
                                                    printf("Bypass: ID_EX.VRs1 = EX_MEM.ALU_out\n");
#endif
                                                }
                                        }
                                        break;
                                    case REGWRITE_VALM:
                                        {
                                            StageMode[STAGE_EX] = MODE_BUBBLE;
                                        }
                                        break;
                                    case REGWRITE_VALP:
                                        {
                                            ID_EX.VRs1 = ID_EX_old.NextPC;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = ID_EX_old.NextPC\n");
#endif
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                    else if (StageModeOld[STAGE_MEM] == MODE_LOAD &&
                             IF_ID_old.RegRs1 == EX_MEM_old.RegDst)
                        {
                            switch (EX_MEM_old.Ctrl_WB_RegWrite)
                                {
                                    case REGWRITE_VALE:
                                        {
                                            ID_EX.VRs1 = EX_MEM_old.ALU_out;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = EX_MEM_old.ALU_out\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALM:
                                        {
                                            ID_EX.VRs1 = MEM_WB.Mem_read;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = MEM_WB.Mem_read\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALP:
                                        {
                                            ID_EX.VRs1 = EX_MEM_old.NextPC;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = EX_MEM_old.NextPC\n");
#endif
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                    else if (StageModeOld[STAGE_WB] == MODE_LOAD &&
                             IF_ID_old.RegRs1 == MEM_WB_old.RegDst)
                        {
                            switch (MEM_WB_old.Ctrl_WB_RegWrite)
                                {
                                    case REGWRITE_VALE:
                                        {
                                            ID_EX.VRs1 = MEM_WB_old.ALU_out;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = MEM_WB_old.ALU_out\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALM:
                                        {
                                            ID_EX.VRs1 = MEM_WB_old.Mem_read;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = MEM_WB_old.Mem_read\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALP:
                                        {
                                            ID_EX.VRs1 = MEM_WB_old.NextPC;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs1 = MEM_WB_old.NextPC\n");
#endif
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                }
            if (IF_ID_old.RegRs2 != R_zero)
                {
                    if (StageModeOld[STAGE_EX] == MODE_LOAD && IF_ID_old.RegRs2 == ID_EX_old.RegDst)
                        {
                            switch (ID_EX_old.Ctrl_WB_RegWrite)
                                {
                                    case REGWRITE_VALE:
                                        {
                                            if ((ALUWait > 0 || ALUWaitFinished ||
                                                 ALUWaitFinishThisCycle))
                                                {
                                                    StageMode[STAGE_EX] = MODE_BUBBLE;
                                                }
                                            else
                                                {

                                                    ID_EX.VRs2 = EX_MEM.ALU_out;
#ifdef PRINT_BYPASS
                                                    printf("Bypass: ID_EX.VRs2 = EX_MEM.ALU_out\n");
#endif
                                                }
                                        }
                                        break;
                                    case REGWRITE_VALM:
                                        {
                                            StageMode[STAGE_EX] = MODE_BUBBLE;
                                        }
                                        break;
                                    case REGWRITE_VALP:
                                        {
                                            ID_EX.VRs2 = ID_EX_old.NextPC;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = ID_EX_old.NextPC\n");
#endif
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                    else if (StageModeOld[STAGE_MEM] == MODE_LOAD &&
                             IF_ID_old.RegRs2 == EX_MEM_old.RegDst)
                        {
                            switch (EX_MEM_old.Ctrl_WB_RegWrite)
                                {
                                    case REGWRITE_VALE:
                                        {
                                            ID_EX.VRs2 = EX_MEM_old.ALU_out;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = EX_MEM_old.ALU_out\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALM:
                                        {
                                            ID_EX.VRs2 = MEM_WB.Mem_read;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = MEM_WB.Mem_read\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALP:
                                        {
                                            ID_EX.VRs2 = EX_MEM_old.NextPC;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = EX_MEM_old.NextPC\n");
#endif
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                    else if (StageModeOld[STAGE_WB] == MODE_LOAD &&
                             IF_ID_old.RegRs2 == MEM_WB_old.RegDst)
                        {
                            switch (MEM_WB_old.Ctrl_WB_RegWrite)
                                {
                                    case REGWRITE_VALE:
                                        {
                                            ID_EX.VRs2 = MEM_WB_old.ALU_out;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = MEM_WB_old.ALU_out\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALM:
                                        {
                                            ID_EX.VRs2 = MEM_WB_old.Mem_read;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = MEM_WB_old.Mem_read\n");
#endif
                                        }
                                        break;
                                    case REGWRITE_VALP:
                                        {
                                            ID_EX.VRs2 = MEM_WB_old.NextPC;
#ifdef PRINT_BYPASS
                                            printf("Bypass: ID_EX.VRs2 = MEM_WB_old.NextPC\n");
#endif
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                }
        }
#else
    if (StageModeOld[STAGE_ID] != MODE_BUBBLE &&
        ((IF_ID_old.RegRs1 != R_zero &&
          ((StageModeOld[STAGE_EX] == MODE_LOAD && IF_ID_old.RegRs1 == ID_EX_old.RegDst) ||
           (StageModeOld[STAGE_MEM] == MODE_LOAD && IF_ID_old.RegRs1 == EX_MEM_old.RegDst) ||
           (StageModeOld[STAGE_WB] == MODE_LOAD && IF_ID_old.RegRs1 == MEM_WB_old.RegDst))) ||
         (IF_ID_old.RegRs2 != R_zero &&
          ((StageModeOld[STAGE_EX] == MODE_LOAD && IF_ID_old.RegRs2 == ID_EX_old.RegDst) ||
           (StageModeOld[STAGE_MEM] == MODE_LOAD && IF_ID_old.RegRs2 == EX_MEM_old.RegDst) ||
           (StageModeOld[STAGE_WB] == MODE_LOAD &&
            IF_ID_old.RegRs2 == MEM_WB_old.RegDst)))))  // data hazard
        {
            StageMode[STAGE_EX] = MODE_BUBBLE;
        }
#endif
    if (Mispredicted)  // mispredicted PC
        {
            StageMode[STAGE_ID] = MODE_BUBBLE;
            StageMode[STAGE_EX] = MODE_BUBBLE;
        }
    if (ALUWait > 0)  // wait for division
        {
            StageMode[STAGE_MEM] = MODE_BUBBLE;
        }

    // update intermediate registers
    if (StageModeOld[STAGE_IF] != MODE_STALL)
        IF_ID_old = IF_ID;
    if (StageModeOld[STAGE_ID] != MODE_STALL)
        ID_EX_old = ID_EX;
    if (StageModeOld[STAGE_EX] != MODE_STALL)
        EX_MEM_old = EX_MEM;
    if (StageModeOld[STAGE_MEM] != MODE_STALL)
        MEM_WB_old = MEM_WB;

    CycleCount += 1;

    // calculate CPI
    CPI = (float)CycleCount / (float)InstCount;

    if (exit_flag != 0)
        return false;

    return true;
}

void ERROR(int line)
{
    printf("ERROR!: %d\n", line);
}

void IF()
{
    switch (StageMode[STAGE_IF])
        {
            case MODE_STALL:
                {
#ifdef PRINT_MODE
                    printf("STALL IF\n");
#endif
                    return;
                }
                break;
            case MODE_BUBBLE:
                {
#ifdef PRINT_MODE
                    printf("BUBBLE IF\n");
#endif
                    IF_ID.RegDst = R_zero;
                    IF_ID.RegRs1 = R_zero;
                    IF_ID.RegRs2 = R_zero;
                    IF_ID.InstPC = 0;
                    IF_ID.NextPC = 0;
                    IF_ID.EXTBit = 0;
                    IF_ID.EXTSrc = 0;

                    IF_ID.Ctrl_ID_EXTOp = EXTOP_SIGNED;
                    IF_ID.Ctrl_EX_BranchCmp = BRANCHCMP_NOP;
                    IF_ID.Ctrl_EX_ALUSrc = ALUSRC_NONE;
                    IF_ID.Ctrl_EX_ALUOp = ALUOP_NOP;
                    IF_ID.Ctrl_EX_Branch = BRANCH_NO;
                    IF_ID.Ctrl_EX_PredictedBranch = BRANCH_NO;
                    IF_ID.Ctrl_MEM_MemWrite = MEMWRITE_NO;
                    IF_ID.Ctrl_MEM_MemRead = MEMREAD_NO;
                    IF_ID.Ctrl_WB_RegWrite = REGWRITE_NO;
                    return;
                }
                break;
            default:
                break;
        }

    ULL InstPC = PC;
    REG NextPC = 0;
    unsigned int Inst = 0;
    unsigned char InstSize = INSTSIZE_32;
    unsigned char EXTOp = EXTOP_SIGNED;
    unsigned int EXTBit = 0;
    unsigned int EXTSrc = 0;
    unsigned char ALUOp = ALUOP_NOP, ALUSrc = ALUSRC_NONE, BranchCmp = BRANCHCMP_NOP;
    unsigned char MemRead = MEMREAD_NO, MemWrite = MEMWRITE_NO;
    unsigned char RegWrite = REGWRITE_NO;
    unsigned char Branch = BRANCH_NO, PredictedBranch = BRANCH_NO;

    // instruction sections
    unsigned int rs1 = R_zero, rs2 = R_zero, rd = R_zero;
    unsigned int opcode = 0;
    unsigned int funct3 = 0, funct7 = 0;
    unsigned int imm0_11 = 0;
    unsigned int imm12_31 = 0;
    unsigned int imm6_11 = 0;
    unsigned int imm5_11 = 0;
    unsigned int imm0_5 = 0;
    unsigned int imm0_4 = 0;

    // fetch instructor
    Inst = READ_WORD(InstPC);

    if ((Inst & 0x3) != 0x3)
        {
            InstSize = INSTSIZE_16;
            NextPC = InstPC + 2;
        }
    else
        {
            InstSize = INSTSIZE_32;
            NextPC = InstPC + 4;
        }


    // indentify instructor
    if (InstSize == INSTSIZE_16)
        {
            opcode = GET_BITS(Inst, 0, 1);
            funct3 = GET_BITS(Inst, 13, 15);
            switch (opcode)
                {
                    case OPC_00:
                        {
                            rs1 = RVC_TO_R(GET_BITS(Inst, 7, 9));
                            switch (funct3)
                                {
                                    case F3C_ADDI4SPN:
                                        {
                                            rd = RVC_TO_R(GET_BITS(Inst, 2, 4));
                                            rs1 = R_sp;
                                            EXTSrc = (GET_BITS(Inst, 7, 10) << 6) |
                                                     (GET_BITS(Inst, 11, 12) << 4) |
                                                     (GET_BIT(Inst, 5) << 3) |
                                                     (GET_BIT(Inst, 6) << 2);
                                            EXTBit = 10;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            RegWrite = REGWRITE_VALE;

                                            sprintf(InstBuf, "addi  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3C_LW:
                                        {
                                            rd = RVC_TO_R(GET_BITS(Inst, 2, 4));
                                            EXTSrc = (GET_BIT(Inst, 5) << 6) |
                                                     (GET_BITS(Inst, 10, 12) << 3) |
                                                     (GET_BIT(Inst, 6) << 2);
                                            EXTBit = 7;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            MemRead = MEMREAD_WORD;
                                            RegWrite = REGWRITE_VALM;

                                            sprintf(InstBuf, "lw  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    case F3C_LD:
                                        {
                                            rd = RVC_TO_R(GET_BITS(Inst, 2, 4));
                                            EXTSrc = (GET_BITS(Inst, 5, 6) << 6) |
                                                     (GET_BITS(Inst, 10, 12) << 3);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            MemRead = MEMREAD_DWORD;
                                            RegWrite = REGWRITE_VALM;

                                            sprintf(InstBuf, "ld  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    case F3C_SW:
                                        {
                                            rs2 = RVC_TO_R(GET_BITS(Inst, 2, 4));
                                            EXTSrc = (GET_BIT(Inst, 5) << 6) |
                                                     (GET_BITS(Inst, 10, 12) << 3) |
                                                     (GET_BIT(Inst, 6) << 2);
                                            EXTBit = 7;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            MemWrite = MEMWRITE_WORD;

                                            sprintf(InstBuf, "sw  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    case F3C_SD:
                                        {
                                            rs2 = RVC_TO_R(GET_BITS(Inst, 2, 4));
                                            EXTSrc = (GET_BITS(Inst, 5, 6) << 6) |
                                                     (GET_BITS(Inst, 10, 12) << 3);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            MemWrite = MEMWRITE_WORD;

                                            sprintf(InstBuf, "sd  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                        break;
                    case OPC_01:
                        {
                            switch (funct3)
                                {
                                    case F3C_ADDI:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            rs1 = rd;
                                            EXTSrc =
                                                (GET_BIT(Inst, 12) << 5) | (GET_BITS(Inst, 2, 6));
                                            EXTBit = 6;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            RegWrite = REGWRITE_VALE;

                                            sprintf(InstBuf, "addi  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rd], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3C_ADDIW:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            rs1 = rd;
                                            EXTSrc =
                                                (GET_BIT(Inst, 12) << 5) | (GET_BITS(Inst, 2, 6));
                                            EXTBit = 6;
                                            ALUOp = ALUOP_ADDW;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            RegWrite = REGWRITE_VALE;

                                            sprintf(InstBuf, "addiw  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rd], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                    case F3C_LI:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            HINT(rd == 0);
                                            rs1 = R_zero;
                                            EXTSrc =
                                                (GET_BIT(Inst, 12) << 5) | (GET_BITS(Inst, 2, 6));
                                            EXTBit = 6;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            ALUOp = ALUOP_ADD;
                                            RegWrite = REGWRITE_VALE;

                                            sprintf(InstBuf, "li  %s, %lld", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3C_LUI:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            HINT(rd == 0);
                                            if (rd != R_sp)  // C.LUI
                                                {
                                                    rs1 = R_zero;
                                                    EXTSrc = (GET_BIT(Inst, 12) << 17) |
                                                             (GET_BITS(Inst, 2, 6) << 12);
                                                    EXTBit = 18;
                                                    ALUSrc = ALUSRC_RS1_IMM;
                                                    ALUOp = ALUOP_ADD;
                                                    RegWrite = REGWRITE_VALE;

                                                    sprintf(InstBuf, "lui  %s, %lld", R_NAME[rd],
                                                            (EXT_SIGNED_DWORD(EXTSrc, EXTBit)));
                                                }
                                            else  // C.ADDI16SPN
                                                {
                                                    rs1 = rd;
                                                    EXTSrc = (GET_BIT(Inst, 12) << 9) |
                                                             (GET_BITS(Inst, 3, 4) << 7) |
                                                             (GET_BIT(Inst, 5) << 6) |
                                                             (GET_BIT(Inst, 2) << 5) |
                                                             (GET_BIT(Inst, 6) << 4);
                                                    EXTBit = 10;
                                                    ALUOp = ALUOP_ADD;
                                                    ALUSrc = ALUSRC_RS1_IMM;
                                                    RegWrite = REGWRITE_VALE;

                                                    sprintf(InstBuf, "addi  %s, %s, %lld",
                                                            R_NAME[rd], R_NAME[rd],
                                                            EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                }
                                        }
                                        break;
                                    case F3C_ARIT:
                                        {
                                            unsigned int funct2_1 = GET_BITS(Inst, 10, 11);
                                            switch (funct2_1)
                                                {
                                                    case F2C_1_SRLI:
                                                        {
                                                            rd = RVC_TO_R(GET_BITS(Inst, 7, 9));
                                                            rs1 = rd;
                                                            EXTSrc = (GET_BIT(Inst, 12) << 5) |
                                                                     (GET_BITS(Inst, 2, 6));
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRL;
                                                            ALUSrc = ALUSRC_RS1_IMM;
                                                            RegWrite = REGWRITE_VALE;

                                                            sprintf(
                                                                InstBuf, "srli  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rd],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    case F2C_1_SRAI:
                                                        {
                                                            rd = RVC_TO_R(GET_BITS(Inst, 7, 9));
                                                            rs1 = rd;
                                                            EXTSrc = (GET_BIT(Inst, 12) << 5) |
                                                                     (GET_BITS(Inst, 2, 6));
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRA;
                                                            ALUSrc = ALUSRC_RS1_IMM;
                                                            RegWrite = REGWRITE_VALE;

                                                            sprintf(
                                                                InstBuf, "srai  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rd],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    case F2C_1_ANDI:
                                                        {
                                                            rd = RVC_TO_R(GET_BITS(Inst, 7, 9));
                                                            rs1 = rd;
                                                            EXTSrc = (GET_BIT(Inst, 12) << 5) |
                                                                     (GET_BITS(Inst, 2, 6));
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_AND;
                                                            ALUSrc = ALUSRC_RS1_IMM;
                                                            RegWrite = REGWRITE_VALE;

                                                            sprintf(
                                                                InstBuf, "andi  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rd],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    case F2C_1_REG:
                                                        {
                                                            unsigned int funct1 = GET_BIT(Inst, 12);
                                                            unsigned int funct2_2 =
                                                                GET_BITS(Inst, 5, 6);

                                                            rd = RVC_TO_R(GET_BITS(Inst, 7, 9));
                                                            rs1 = rd;
                                                            rs2 = RVC_TO_R(GET_BITS(Inst, 2, 4));
                                                            ALUSrc = ALUSRC_RS1_RS2;
                                                            RegWrite = REGWRITE_VALE;
                                                            switch (funct1)
                                                                {
                                                                    case F1C_D:
                                                                        {
                                                                            switch (funct2_2)
                                                                                {
                                                                                    case F2C_2_SUB:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_SUB;

                                                                                            sprintf(
                                                                                                InstBuf,
                                                                                                "su"
                                                                                                "b"
                                                                                                "  "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%"
                                                                                                "s",
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rs2]);
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_XOR:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_XOR;

                                                                                            sprintf(
                                                                                                InstBuf,
                                                                                                "xo"
                                                                                                "r "
                                                                                                " %"
                                                                                                "s,"
                                                                                                " %"
                                                                                                "s,"
                                                                                                " %"
                                                                                                "s",
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rs2]);
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_OR:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_OR;

                                                                                            sprintf(
                                                                                                InstBuf,
                                                                                                "or"
                                                                                                "  "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%"
                                                                                                "s",
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rs2]);
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_AND:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_AND;

                                                                                            sprintf(
                                                                                                InstBuf,
                                                                                                "an"
                                                                                                "d "
                                                                                                " %"
                                                                                                "s,"
                                                                                                " %"
                                                                                                "s,"
                                                                                                " %"
                                                                                                "s",
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rs2]);
                                                                                        }
                                                                                        break;
                                                                                    default:
                                                                                        ERROR(
                                                                                            __LINE__);
                                                                                }
                                                                        }
                                                                        break;
                                                                    case F1C_W:
                                                                        {
                                                                            switch (funct2_2)
                                                                                {
                                                                                    case F2C_2_SUBW:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_SUBW;

                                                                                            sprintf(
                                                                                                InstBuf,
                                                                                                "su"
                                                                                                "bw"
                                                                                                "  "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%"
                                                                                                "s",
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rs2]);
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_ADDW:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_ADDW;

                                                                                            sprintf(
                                                                                                InstBuf,
                                                                                                "ad"
                                                                                                "dw"
                                                                                                "  "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%s"
                                                                                                ", "
                                                                                                "%"
                                                                                                "s",
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rd],
                                                                                                R_NAME
                                                                                                    [rs2]);
                                                                                        }
                                                                                        break;
                                                                                    default:
                                                                                        ERROR(
                                                                                            __LINE__);
                                                                                }
                                                                        }
                                                                        break;
                                                                    default:
                                                                        ERROR(__LINE__);
                                                                }
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3C_J:
                                        {
                                            EXTSrc =
                                                (GET_BIT(Inst, 12) << 11) |
                                                (GET_BIT(Inst, 8) << 10) |
                                                (GET_BITS(Inst, 9, 10) << 8) |
                                                (GET_BIT(Inst, 6) << 7) | (GET_BIT(Inst, 7) << 6) |
                                                (GET_BIT(Inst, 2) << 5) | (GET_BIT(Inst, 11) << 4) |
                                                (GET_BITS(Inst, 3, 5) << 1);
                                            EXTBit = 12;
                                            ALUSrc = ALUSRC_PC_IMM;
                                            ALUOp = ALUOP_ADD;
                                            Branch = BRANCH_YES;

                                            sprintf(InstBuf, "jal  %s, 0x%llx", R_NAME[R_zero],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3C_BEQZ:
                                        {
                                            rs1 = RVC_TO_R(GET_BITS(Inst, 7, 9));
                                            rs2 = R_zero;
                                            EXTSrc = (GET_BIT(Inst, 12) << 8) |
                                                     (GET_BITS(Inst, 5, 6) << 6) |
                                                     (GET_BIT(Inst, 2) << 5) |
                                                     (GET_BITS(Inst, 10, 11) << 3) |
                                                     (GET_BITS(Inst, 3, 4) << 1);
                                            EXTBit = 9;
                                            BranchCmp = BRANCHCMP_EQ;
                                            ALUSrc = ALUSRC_PC_IMM;
                                            ALUOp = ALUOP_ADD;

                                            sprintf(InstBuf, "beqz  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3C_BENZ:
                                        {
                                            rs1 = RVC_TO_R(GET_BITS(Inst, 7, 9));
                                            rs2 = R_zero;
                                            EXTSrc = (GET_BIT(Inst, 12) << 8) |
                                                     (GET_BITS(Inst, 5, 6) << 6) |
                                                     (GET_BIT(Inst, 2) << 5) |
                                                     (GET_BITS(Inst, 10, 11) << 3) |
                                                     (GET_BITS(Inst, 3, 4) << 1);
                                            EXTBit = 9;
                                            BranchCmp = BRANCHCMP_NE;
                                            ALUSrc = ALUSRC_PC_IMM;
                                            ALUOp = ALUOP_ADD;

                                            sprintf(InstBuf, "bnez  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                        break;
                    case OPC_10:
                        {
                            switch (funct3)
                                {
                                    case F3C_SLLI:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            rs1 = rd;
                                            EXTSrc =
                                                (GET_BIT(Inst, 12) << 5) | (GET_BITS(Inst, 2, 6));
                                            EXTBit = 6;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            ALUOp = ALUOP_SLL;
                                            RegWrite = REGWRITE_VALE;

                                            sprintf(InstBuf, "slli  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rd], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3C_LWSP:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            rs1 = R_sp;
                                            EXTSrc = (GET_BITS(Inst, 2, 3) << 6) |
                                                     (GET_BIT(Inst, 12) << 5) |
                                                     (GET_BITS(Inst, 4, 6) << 2);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemRead = MEMREAD_WORD;
                                            RegWrite = REGWRITE_VALM;

                                            sprintf(InstBuf, "lw  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    case F3C_LDSP:
                                        {
                                            rd = GET_BITS(Inst, 7, 11);
                                            rs1 = R_sp;
                                            EXTSrc = (GET_BITS(Inst, 2, 4) << 6) |
                                                     (GET_BIT(Inst, 12) << 5) |
                                                     (GET_BITS(Inst, 5, 6) << 3);
                                            EXTBit = 9;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemRead = MEMREAD_DWORD;
                                            RegWrite = REGWRITE_VALM;

                                            sprintf(InstBuf, "ld  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    case F3C_JR:
                                        {
                                            unsigned int funct1 = GET_BIT(Inst, 12);
                                            rs2 = GET_BITS(Inst, 2, 6);
                                            switch (funct1)
                                                {
                                                    case F1C_JRMV:
                                                        {
                                                            if (rs2 == 0)  // C.JR
                                                                {
                                                                    rs1 = GET_BITS(Inst, 7, 11);
                                                                    ALUSrc = ALUSRC_RS1_IMM;
                                                                    ALUOp = ALUOP_ADD;
                                                                    Branch = BRANCH_YES;

                                                                    sprintf(InstBuf,
                                                                            "jalr  %s, %s, 0x%x",
                                                                            R_NAME[R_zero],
                                                                            R_NAME[rs1], 0);
                                                                }
                                                            else  // C.MV
                                                                {
                                                                    rd = GET_BITS(Inst, 7, 11);
                                                                    rs1 = R_zero;
                                                                    ALUSrc = ALUSRC_RS1_RS2;
                                                                    ALUOp = ALUOP_ADD;
                                                                    RegWrite = REGWRITE_VALE;

                                                                    sprintf(InstBuf, "mv  %s, %s",
                                                                            R_NAME[rd],
                                                                            R_NAME[rs2]);
                                                                }
                                                        }
                                                        break;
                                                    case F1C_JALRADD:
                                                        {
                                                            if (rs2 == 0)  // C.JALR
                                                                {
                                                                    rd = R_ra;
                                                                    rs1 = GET_BITS(Inst, 7, 11);
                                                                    ALUSrc = ALUSRC_RS1_IMM;
                                                                    ALUOp = ALUOP_ADD;
                                                                    RegWrite = REGWRITE_VALP;
                                                                    Branch = BRANCH_YES;

                                                                    sprintf(InstBuf,
                                                                            "jalr  %s, %s, 0x%x",
                                                                            R_NAME[rd], R_NAME[rs1],
                                                                            0);
                                                                }
                                                            else  // C.ADD
                                                                {
                                                                    rd = GET_BITS(Inst, 7, 11);
                                                                    rs1 = rd;
                                                                    ALUSrc = ALUSRC_RS1_RS2;
                                                                    ALUOp = ALUOP_ADD;
                                                                    RegWrite = REGWRITE_VALE;

                                                                    sprintf(InstBuf,
                                                                            "add  %s, %s, %s",
                                                                            R_NAME[rd], R_NAME[rs1],
                                                                            R_NAME[rs2]);
                                                                }
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3C_SWSP:
                                        {
                                            rs1 = R_sp;
                                            rs2 = GET_BITS(Inst, 2, 6);
                                            EXTSrc = (GET_BITS(Inst, 7, 8) << 6) |
                                                     (GET_BITS(Inst, 9, 12) << 2);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemWrite = MEMWRITE_WORD;

                                            sprintf(InstBuf, "sw  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    case F3C_SDSP:
                                        {
                                            rs1 = R_sp;
                                            rs2 = GET_BITS(Inst, 2, 6);
                                            EXTSrc = (GET_BITS(Inst, 7, 9) << 6) |
                                                     (GET_BITS(Inst, 10, 12) << 3);
                                            EXTBit = 9;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS1_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemWrite = MEMWRITE_DWORD;

                                            sprintf(InstBuf, "sd  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_UNSIGNED_DWORD(EXTSrc, EXTBit),
                                                    R_NAME[rs1]);
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                        break;
                    default:
                        ERROR(__LINE__);
                }
        }
    else if (InstSize == INSTSIZE_32)
        {
            opcode = GET_BITS(Inst, 0, 6);
            switch (opcode)
                {
                    case OP_ARIT_REG:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rd = GET_BITS(Inst, 7, 11);
                            rs1 = GET_BITS(Inst, 15, 19);
                            rs2 = GET_BITS(Inst, 20, 24);
                            ALUSrc = ALUSRC_RS1_RS2;
                            RegWrite = REGWRITE_VALE;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_ADD:
                                                        {
                                                            ALUOp = ALUOP_ADD;

                                                            sprintf(InstBuf, "add  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_SUB:
                                                        {
                                                            ALUOp = ALUOP_SUB;

                                                            sprintf(InstBuf, "sub  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_MUL:
                                                        {
                                                            ALUOp = ALUOP_MUL;

                                                            sprintf(InstBuf, "mul  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_SLL:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SLL:
                                                        {
                                                            ALUOp = ALUOP_SLL;

                                                            sprintf(InstBuf, "sll  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_MULH:
                                                        {
                                                            ALUOp = ALUOP_MULH;

                                                            sprintf(InstBuf, "mulh  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_SLT:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SLT:
                                                        {
                                                            ALUOp = ALUOP_SLT;

                                                            sprintf(InstBuf, "slt  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_MULHSU:
                                                        {
                                                            ALUOp = ALUOP_MULHSU;

                                                            sprintf(InstBuf, "mulhsu  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3_SLTU:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SLTU:
                                                        {
                                                            ALUOp = ALUOP_SLTU;

                                                            sprintf(InstBuf, "sltu  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_MULHU:
                                                        {
                                                            ALUOp = ALUOP_MULHU;

                                                            sprintf(InstBuf, "mulhu  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_XOR:
                                                        {
                                                            ALUOp = ALUOP_XOR;

                                                            sprintf(InstBuf, "xor  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_DIV:
                                                        {
                                                            ALUOp = ALUOP_DIV;

                                                            sprintf(InstBuf, "div  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_SRL:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SRL:
                                                        {
                                                            ALUOp = ALUOP_SRL;

                                                            sprintf(InstBuf, "srl  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_SRA:
                                                        {
                                                            ALUOp = ALUOP_SRA;

                                                            sprintf(InstBuf, "sra  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_DIVU:
                                                        {
                                                            ALUOp = ALUOP_DIVU;

                                                            sprintf(InstBuf, "divu  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_OR:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_OR:
                                                        {
                                                            ALUOp = ALUOP_OR;

                                                            sprintf(InstBuf, "or  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_REM:
                                                        {
                                                            ALUOp = ALUOP_REM;

                                                            sprintf(InstBuf, "rem  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_AND:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_AND:
                                                        {
                                                            ALUOp = ALUOP_AND;

                                                            sprintf(InstBuf, "and  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_REMU:
                                                        {
                                                            ALUOp = ALUOP_REMU;

                                                            sprintf(InstBuf, "remu  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_ARIT_REG_W:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rd = GET_BITS(Inst, 7, 11);
                            rs1 = GET_BITS(Inst, 15, 19);
                            rs2 = GET_BITS(Inst, 20, 24);
                            ALUSrc = ALUSRC_RS1_RS2;
                            RegWrite = REGWRITE_VALE;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_ADD:
                                                        {
                                                            ALUOp = ALUOP_ADDW;

                                                            sprintf(InstBuf, "addw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_SUB:
                                                        {
                                                            ALUOp = ALUOP_SUBW;

                                                            sprintf(InstBuf, "subw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_MUL:
                                                        {
                                                            ALUOp = ALUOP_MULW;

                                                            sprintf(InstBuf, "mulw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_SLL:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SLL:
                                                        {
                                                            ALUOp = ALUOP_SLLW;

                                                            sprintf(InstBuf, "sllw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_DIV:
                                                        {
                                                            ALUOp = ALUOP_DIVW;

                                                            sprintf(InstBuf, "divw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_SRL:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SRL:
                                                        {
                                                            ALUOp = ALUOP_SRLW;

                                                            sprintf(InstBuf, "srlw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_SRA:
                                                        {
                                                            ALUOp = ALUOP_SRAW;

                                                            sprintf(InstBuf, "sraw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    case F7_DIVU:
                                                        {
                                                            ALUOp = ALUOP_DIVUW;

                                                            sprintf(InstBuf, "divuw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_OR:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_REM:
                                                        {
                                                            ALUOp = ALUOP_REMW;

                                                            sprintf(InstBuf, "remw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_AND:
                                        {
                                            funct7 = GET_BITS(Inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_REMU:
                                                        {
                                                            ALUOp = ALUOP_REMUW;

                                                            sprintf(InstBuf, "remuw  %s, %s, %s",
                                                                    R_NAME[rd], R_NAME[rs1],
                                                                    R_NAME[rs2]);
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_ARIT_IMM:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rd = GET_BITS(Inst, 7, 11);
                            rs1 = GET_BITS(Inst, 15, 19);
                            ALUSrc = ALUSRC_RS1_IMM;
                            RegWrite = REGWRITE_VALE;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_ADD;

                                            sprintf(InstBuf, "addi  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3_SLL:
                                        {
                                            imm6_11 = GET_BITS(Inst, 26, 31);
                                            if (imm6_11 == IMM6_11_SLLI)
                                                {
                                                    imm0_5 = (GET_BIT(Inst, 25) << 5) |
                                                             (GET_BITS(Inst, 20, 24));
                                                    EXTSrc = imm0_5;
                                                    EXTBit = 6;
                                                    ALUOp = ALUOP_SLL;

                                                    sprintf(InstBuf, "slli  %s, %s, %lld",
                                                            R_NAME[rd], R_NAME[rs1],
                                                            EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                }
                                            else
                                                {
                                                    ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3_SLT:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_SLT;

                                            sprintf(InstBuf, "slti  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3_SLTU:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_SLTU;

                                            sprintf(InstBuf, "sltiu  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_XOR;

                                            sprintf(InstBuf, "xori  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3_SRL:
                                        {
                                            imm6_11 = GET_BITS(Inst, 26, 31);
                                            switch (imm6_11)
                                                {
                                                    case IMM6_11_SRLI:
                                                        {
                                                            imm0_5 = (GET_BIT(Inst, 25) << 5) |
                                                                     (GET_BITS(Inst, 20, 24));
                                                            EXTSrc = imm0_5;
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRL;

                                                            sprintf(
                                                                InstBuf, "srli  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rs1],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    case IMM6_11_SRAI:
                                                        {
                                                            imm0_5 = (GET_BIT(Inst, 25) << 5) |
                                                                     (GET_BITS(Inst, 20, 24));
                                                            EXTSrc = imm0_5;
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRA;

                                                            sprintf(
                                                                InstBuf, "srai  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rs1],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_OR:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_OR;

                                            sprintf(InstBuf, "ori  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3_AND:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_AND;

                                            sprintf(InstBuf, "andi  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_ARIT_IMM_W:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rd = GET_BITS(Inst, 7, 11);
                            rs1 = GET_BITS(Inst, 15, 19);
                            ALUSrc = ALUSRC_RS1_IMM;
                            RegWrite = REGWRITE_VALE;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            imm0_11 = GET_BITS(Inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_ADDW;

                                            sprintf(InstBuf, "addiw  %s, %s, %lld", R_NAME[rd],
                                                    R_NAME[rs1], EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                        }
                                        break;
                                    case F3_SLL:
                                        {
                                            imm6_11 = GET_BITS(Inst, 26, 31);
                                            if (imm6_11 == IMM6_11_SLLI)
                                                {
                                                    imm0_5 = (GET_BIT(Inst, 25) << 5) |
                                                             (GET_BITS(Inst, 20, 24));
                                                    EXTSrc = imm0_5;
                                                    EXTBit = 6;
                                                    ALUOp = ALUOP_SLLW;

                                                    sprintf(InstBuf, "slliw  %s, %s, %lld",
                                                            R_NAME[rd], R_NAME[rs1],
                                                            EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                }
                                            else
                                                {
                                                    ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3_SRL:
                                        {
                                            imm6_11 = GET_BITS(Inst, 26, 31);
                                            switch (imm6_11)
                                                {
                                                    case IMM6_11_SRLI:
                                                        {
                                                            imm0_5 = (GET_BIT(Inst, 25) << 5) |
                                                                     (GET_BITS(Inst, 20, 24));
                                                            EXTSrc = imm0_5;
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRLW;

                                                            sprintf(
                                                                InstBuf, "srliw  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rs1],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    case IMM6_11_SRAI:
                                                        {
                                                            imm0_5 = (GET_BIT(Inst, 25) << 5) |
                                                                     (GET_BITS(Inst, 20, 24));
                                                            EXTSrc = imm0_5;
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRAW;

                                                            sprintf(
                                                                InstBuf, "sraiw  %s, %s, %lld",
                                                                R_NAME[rd], R_NAME[rs1],
                                                                EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                                        }
                                                        break;
                                                    default:
                                                        ERROR(__LINE__);
                                                        break;
                                                }
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_LOAD:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rd = GET_BITS(Inst, 7, 11);
                            rs1 = GET_BITS(Inst, 15, 19);
                            imm0_11 = GET_BITS(Inst, 20, 31);
                            EXTSrc = imm0_11;
                            EXTBit = 12;
                            ALUOp = ALUOP_ADD;
                            ALUSrc = ALUSRC_RS1_IMM;
                            RegWrite = REGWRITE_VALM;
                            switch (funct3)
                                {
                                    case F3_BYTE:
                                        {
                                            MemRead = MEMREAD_BYTE;

                                            sprintf(InstBuf, "lb  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_HWORD:
                                        {
                                            MemRead = MEMREAD_HWORD;

                                            sprintf(InstBuf, "lh  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_WORD:
                                        {
                                            MemRead = MEMREAD_WORD;

                                            sprintf(InstBuf, "lw  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_DWORD:
                                        {
                                            MemRead = MEMREAD_DWORD;

                                            sprintf(InstBuf, "ldu  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_BYTEU:
                                        {
                                            MemRead = MEMREAD_BYTEU;

                                            sprintf(InstBuf, "lbu  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_HWORDU:
                                        {
                                            MemRead = MEMREAD_HWORDU;

                                            sprintf(InstBuf, "lhu  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_WORDU:
                                        {
                                            MemRead = MEMREAD_WORDU;

                                            sprintf(InstBuf, "lwu  %s, %lld(%s)", R_NAME[rd],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_JALR:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            if (funct3 == F3_JALR)
                                {
                                    rd = GET_BITS(Inst, 7, 11);
                                    rs1 = GET_BITS(Inst, 15, 19);
                                    imm0_11 = GET_BITS(Inst, 20, 31);
                                    EXTSrc = imm0_11;
                                    EXTBit = 12;
                                    ALUSrc = ALUSRC_RS1_IMM;
                                    ALUOp = ALUOP_ADD;
                                    Branch = BRANCH_YES;
                                    RegWrite = REGWRITE_VALP;

                                    sprintf(InstBuf, "jalr  %s, %s, %lld", R_NAME[rd], R_NAME[rs1],
                                            EXT_SIGNED_DWORD(EXTSrc, EXTBit));
                                }
                            else
                                {
                                    ERROR(__LINE__);
                                }
                        }
                        break;
                    case OP_ECALL:
                        {
                            ERROR(__LINE__);
                        }
                        break;
                    case OP_STORE:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rs1 = GET_BITS(Inst, 15, 19);
                            rs2 = GET_BITS(Inst, 20, 24);
                            imm0_4 = GET_BITS(Inst, 7, 11);
                            imm5_11 = GET_BITS(Inst, 25, 31);
                            EXTSrc = (imm5_11 << 5) | imm0_4;
                            EXTBit = 12;
                            ALUSrc = ALUSRC_RS1_IMM;
                            ALUOp = ALUOP_ADD;

                            switch (funct3)
                                {
                                    case F3_BYTE:
                                        {
                                            MemWrite = MEMWRITE_BYTE;

                                            sprintf(InstBuf, "sb  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_HWORD:
                                        {
                                            MemWrite = MEMWRITE_HWORD;

                                            sprintf(InstBuf, "sh  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_WORD:
                                        {
                                            MemWrite = MEMWRITE_WORD;

                                            sprintf(InstBuf, "sw  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    case F3_DWORD:
                                        {
                                            MemWrite = MEMWRITE_DWORD;

                                            sprintf(InstBuf, "sd  %s, %lld(%s)", R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit), R_NAME[rs1]);
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_BRANCH:
                        {
                            funct3 = GET_BITS(Inst, 12, 14);
                            rs1 = GET_BITS(Inst, 15, 19);
                            rs2 = GET_BITS(Inst, 20, 24);
                            EXTSrc = (GET_BIT(Inst, 31) << 12) | (GET_BIT(Inst, 7) << 11) |
                                     (GET_BITS(Inst, 25, 30) << 5) | (GET_BITS(Inst, 8, 11) << 1);
                            EXTBit = 13;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;

                            switch (funct3)
                                {
                                    case F3_EQ:
                                        {
                                            BranchCmp = BRANCHCMP_EQ;

                                            sprintf(InstBuf, "beq  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3_NE:
                                        {
                                            BranchCmp = BRANCHCMP_NE;

                                            sprintf(InstBuf, "bne  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3_LT:
                                        {
                                            BranchCmp = BRANCHCMP_LT;

                                            sprintf(InstBuf, "blt  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3_GE:
                                        {
                                            BranchCmp = BRANCHCMP_GE;

                                            sprintf(InstBuf, "bge  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3_LTU:
                                        {
                                            BranchCmp = BRANCHCMP_LTU;

                                            sprintf(InstBuf, "bltu  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    case F3_GEU:
                                        {
                                            BranchCmp = BRANCHCMP_GEU;

                                            sprintf(InstBuf, "bgeu  %s, %s, 0x%llx", R_NAME[rs1],
                                                    R_NAME[rs2],
                                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                        break;
                    case OP_AUIPC:
                        {
                            rd = GET_BITS(Inst, 7, 11);
                            imm12_31 = GET_BITS(Inst, 12, 31);
                            EXTSrc = (imm12_31) << 12;
                            EXTBit = 32;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;
                            RegWrite = REGWRITE_VALE;

                            sprintf(InstBuf, "auipc  %s, %d", R_NAME[rd], (int)EXTSrc);
                        }
                        break;
                    case OP_LUI:
                        {
                            rd = GET_BITS(Inst, 7, 11);
                            rs1 = R_zero;
                            imm12_31 = GET_BITS(Inst, 12, 31);
                            EXTSrc = ((imm12_31) << 12);
                            EXTBit = 32;
                            ALUSrc = ALUSRC_RS1_IMM;
                            ALUOp = ALUOP_ADD;
                            RegWrite = REGWRITE_VALE;

                            sprintf(InstBuf, "lui  %s, %d", R_NAME[rd], (int)EXTSrc);
                        }
                        break;
                    case OP_JAL:
                        {
                            rd = GET_BITS(Inst, 7, 11);
                            EXTSrc = (GET_BIT(Inst, 31) << 20) | (GET_BITS(Inst, 12, 19) << 12) |
                                     (GET_BIT(Inst, 20) << 11) | (GET_BITS(Inst, 21, 30) << 1);
                            EXTBit = 21;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;
                            RegWrite = REGWRITE_VALP;
                            Branch = BRANCH_YES;

                            sprintf(InstBuf, "jal  %s, 0x%llx", R_NAME[rd],
                                    EXT_SIGNED_DWORD(EXTSrc, EXTBit) + PC);
                        }
                        break;
                    default:
                        ERROR(__LINE__);
                        break;
                }
        }

    // predict PC
    PC = NextPC;
#ifdef PREDICT
    // jal || B-type
    if ((Branch == BRANCH_YES && ALUSrc == ALUSRC_PC_IMM) || BranchCmp != BRANCHCMP_NOP)
        {
            for (int i = 0; i < BTB_SIZE; ++i)
                {
                    if (btb[i].valid && InstPC == btb[i].InstPC)
                        {
                            if (Branch == BRANCH_YES || btb[i].status2)
                                {
                                    PC = btb[i].PredictedPC;
                                    PredictedBranch = BRANCH_YES;
                                }
                            break;
                        }
                }
        }
#endif

    // write IF_ID
    IF_ID.RegDst = rd;
    IF_ID.RegRs1 = rs1;
    IF_ID.RegRs2 = rs2;
    IF_ID.InstPC = InstPC;
    IF_ID.NextPC = NextPC;
    IF_ID.EXTBit = EXTBit;
    IF_ID.EXTSrc = EXTSrc;

    IF_ID.Ctrl_ID_EXTOp = EXTOp;
    IF_ID.Ctrl_EX_BranchCmp = BranchCmp;
    IF_ID.Ctrl_EX_ALUSrc = ALUSrc;
    IF_ID.Ctrl_EX_ALUOp = ALUOp;
    IF_ID.Ctrl_EX_Branch = Branch;
    IF_ID.Ctrl_EX_PredictedBranch = PredictedBranch;
    IF_ID.Ctrl_MEM_MemWrite = MemWrite;
    IF_ID.Ctrl_MEM_MemRead = MemRead;
    IF_ID.Ctrl_WB_RegWrite = RegWrite;
}

void ID()
{
    switch (StageMode[STAGE_ID])
        {
            case MODE_STALL:
                {
#ifdef PRINT_MODE
                    printf("STALL ID\n");
#endif
                    return;
                }
                break;
            case MODE_BUBBLE:
                {
#ifdef PRINT_MODE
                    printf("BUBBLE ID\n");
#endif
                    ID_EX.RegDst = R_zero;
                    ID_EX.InstPC = 0;
                    ID_EX.NextPC = 0;
                    ID_EX.VRs1 = 0;
                    ID_EX.VRs2 = 0;
                    ID_EX.Imm = 0;

                    ID_EX.Ctrl_EX_BranchCmp = BRANCHCMP_NOP;
                    ID_EX.Ctrl_EX_ALUSrc = ALUSRC_NONE;
                    ID_EX.Ctrl_EX_ALUOp = ALUOP_NOP;
                    ID_EX.Ctrl_EX_Branch = BRANCH_NO;
                    ID_EX.Ctrl_EX_PredictedBranch = BRANCH_NO;
                    ID_EX.Ctrl_MEM_MemWrite = MEMWRITE_NO;
                    ID_EX.Ctrl_MEM_MemRead = MEMREAD_NO;
                    ID_EX.Ctrl_WB_RegWrite = REGWRITE_NO;

                    return;
                }
                break;
            default:
                break;
        }

    // read IF_ID_old
    unsigned int RegDst = IF_ID_old.RegDst;
    unsigned int RegRs1 = IF_ID_old.RegRs1;
    unsigned int RegRs2 = IF_ID_old.RegRs2;
    REG InstPC = IF_ID_old.InstPC;
    REG NextPC = IF_ID_old.NextPC;
    unsigned int EXTBit = IF_ID_old.EXTBit;
    unsigned int EXTSrc = IF_ID_old.EXTSrc;
    unsigned char EXTOp = IF_ID_old.Ctrl_ID_EXTOp;
    unsigned char BranchCmp = IF_ID_old.Ctrl_EX_BranchCmp;
    unsigned char ALUSrc = IF_ID_old.Ctrl_EX_ALUSrc;
    unsigned char ALUOp = IF_ID_old.Ctrl_EX_ALUOp;
    unsigned char Branch = IF_ID_old.Ctrl_EX_Branch;
    unsigned char PredictedBranch = IF_ID_old.Ctrl_EX_PredictedBranch;
    unsigned char MemWrite = IF_ID_old.Ctrl_MEM_MemWrite;
    unsigned char MemRead = IF_ID_old.Ctrl_MEM_MemRead;
    unsigned char RegWrite = IF_ID_old.Ctrl_WB_RegWrite;

    long long Imm = 0;
    REG VRs1 = 0, VRs2 = 0;

    VRs1 = reg[RegRs1];
    VRs2 = reg[RegRs2];

    if (EXTBit != 0)
        {
            switch (EXTOp)
                {
                    case EXTOP_SIGNED:
                        {
                            Imm = EXT_SIGNED_DWORD(EXTSrc, EXTBit);
                        }
                        break;
                    case EXTOP_UNSIGED:
                        {
                            Imm = EXT_UNSIGNED_DWORD(EXTSrc, EXTBit);
                        }
                        break;
                    default:
                        ERROR(__LINE__);
                }
        }
    else
        Imm = EXTSrc;

    // write ID_EX
    ID_EX.RegDst = RegDst;
    ID_EX.InstPC = InstPC;
    ID_EX.NextPC = NextPC;
    ID_EX.VRs1 = VRs1;
    ID_EX.VRs2 = VRs2;
    ID_EX.Imm = Imm;

    ID_EX.Ctrl_EX_BranchCmp = BranchCmp;
    ID_EX.Ctrl_EX_ALUSrc = ALUSrc;
    ID_EX.Ctrl_EX_ALUOp = ALUOp;
    ID_EX.Ctrl_EX_Branch = Branch;
    ID_EX.Ctrl_EX_PredictedBranch = PredictedBranch;
    ID_EX.Ctrl_MEM_MemWrite = MemWrite;
    ID_EX.Ctrl_MEM_MemRead = MemRead;
    ID_EX.Ctrl_WB_RegWrite = RegWrite;
}

void EX()
{
    // update ALU wait count
    if (ALUWaitFinished)
        {
            ALUWaitFinished = false;
            ALUWaitFinishThisCycle = true;
            return;
        }
    ALUWaitFinishThisCycle = false;
    if (ALUWait > 0)
        {
            ALUWait--;
            if (ALUWait == 0)
                ALUWaitFinished = true;
        }

    switch (StageMode[STAGE_EX])
        {
            case MODE_STALL:
                {
#ifdef PRINT_MODE
                    printf("STALL EX\n");
#endif
                    return;
                }
                break;
            case MODE_BUBBLE:
                {
#ifdef PRINT_MODE
                    printf("BUBBLE EX\n");
#endif
                    EX_MEM.RegDst = R_zero;
                    EX_MEM.NextPC = 0;
                    EX_MEM.ALU_out = 0;
                    EX_MEM.VRs2 = 0;

                    EX_MEM.Ctrl_MEM_MemWrite = MEMWRITE_NO;
                    EX_MEM.Ctrl_MEM_MemRead = MEMREAD_NO;
                    EX_MEM.Ctrl_WB_RegWrite = REGWRITE_NO;

                    return;
                }
                break;
            default:
                break;
        }

    // read ID_EX_old
    unsigned int RegDst = ID_EX_old.RegDst;
    REG InstPC = ID_EX_old.InstPC;
    REG NextPC = ID_EX_old.NextPC;
    REG VRs1 = ID_EX_old.VRs1;
    REG VRs2 = ID_EX_old.VRs2;
    long long Imm = ID_EX_old.Imm;
    unsigned char BranchCmp = ID_EX_old.Ctrl_EX_BranchCmp;
    unsigned char ALUSrc = ID_EX_old.Ctrl_EX_ALUSrc;
    unsigned char ALUOp = ID_EX_old.Ctrl_EX_ALUOp;
    unsigned char Branch = ID_EX_old.Ctrl_EX_Branch;
    unsigned char PredictedBranch = ID_EX_old.Ctrl_EX_PredictedBranch;
    unsigned char MemWrite = ID_EX_old.Ctrl_MEM_MemWrite;
    unsigned char MemRead = ID_EX_old.Ctrl_MEM_MemRead;
    unsigned char RegWrite = ID_EX_old.Ctrl_WB_RegWrite;

    REG VA = 0, VB = 0;
    REG ALUOut = 0;

    // branch compare
    switch (BranchCmp)
        {
            case BRANCHCMP_NOP:
                break;
            case BRANCHCMP_EQ:
                {
                    if (VRs1 == VRs2)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_NE:
                {
                    if (VRs1 != VRs2)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_LT:
                {
                    if ((long long)VRs1 < (long long)VRs2)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_GE:
                {
                    if ((long long)VRs1 >= (long long)VRs2)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_LTU:
                {
                    if (VRs1 < VRs2)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_GEU:
                {
                    if (VRs1 >= VRs2)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // choose ALU input number
    switch (ALUSrc)
        {
            case ALUSRC_NONE:
                break;
            case ALUSRC_RS1_RS2:
                {
                    VA = VRs1;
                    VB = VRs2;
                }
                break;
            case ALUSRC_RS1_IMM:
                {
                    VA = VRs1;
                    VB = (ULL)Imm;
                }
                break;
            case ALUSRC_PC_IMM:
                {
                    VA = InstPC;
                    VB = (ULL)Imm;
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // alu calculate
    switch (ALUOp)
        {
            case ALUOP_NOP:
                break;
            case ALUOP_ADD:
                {
                    ALUOut = VA + VB;
                }
                break;
            case ALUOP_SUB:
                {
                    ALUOut = VA - VB;
                }
                break;
            case ALUOP_MUL:
                {
                    ALUOut = VA * VB;
                }
                break;
            case ALUOP_MULH:
                {
                    ALUWait = 1;

                    long long VT_1 = 0, VT_2 = 0, VT_3 = 0;

                    ULL VA_H = (((long long)VA & MASK_H) >> 32), VA_L = ((long long)VA & MASK_L),
                        VB_H = (((long long)VB & MASK_H) >> 32), VB_L = ((long long)VB & MASK_L);

                    if (VA_H != 0)
                        {
                            if (VB_H != 0)
                                {
                                    VT_1 = (long long)VA_H * (ULL)VB_L;
                                    VT_2 = (ULL)VA_L * (long long)VB_H;
                                    VT_3 = (long long)VA_H * (long long)VB_H;
                                }
                            else
                                {
                                    VT_1 = (long long)VA_H * (long long)VB_L;
                                    VT_2 = (ULL)VA_L * (ULL)VB_H;
                                    VT_3 = (long long)VA_H * (ULL)VB_H;
                                }
                        }
                    else
                        {
                            VT_1 = (ULL)VA_H * (long long)VB_L;
                            VT_2 = (long long)VA_L * (ULL)VB_H;
                            VT_3 = (ULL)VA_H * (ULL)VB_H;
                        }

                    if (VT_1 < 0 && VT_2 < 0 && (VT_1 + VT_2) >= 0)
                        {
                            VT_3 += 1;
                        }
                    ALUOut = VT_3 + ((VT_1 + VT_2) >> 32);
                }
                break;
            case ALUOP_MULHU:
                {
                    ALUWait = 1;

                    ULL VA_H = ((VA & MASK_H) >> 32), VA_L = (VA & MASK_L),
                        VB_H = ((VB & MASK_H) >> 32), VB_L = (VB & MASK_L);
                    long long VT_1 = VA_H * VB_L, VT_2 = VA_L * VB_H, VT_3 = VA_H * VB_H;
                    if (VT_1 < 0 && VT_2 < 0 && (VT_1 + VT_2) >= 0)
                        {
                            VT_3 += 1;
                        }
                    ALUOut = VT_3 + ((VT_1 + VT_2) >> 32);
                }
                break;
            case ALUOP_MULHSU:
                {
                    ALUWait = 1;

                    long long VT_1 = 0, VT_2 = 0, VT_3 = 0;

                    ULL VA_H = (((long long)VA & MASK_H) >> 32), VA_L = ((long long)VA & MASK_L),
                        VB_H = (((long long)VB & MASK_H) >> 32), VB_L = ((long long)VB & MASK_L);

                    if (VA_H != 0)
                        {
                            VT_1 = (long long)VA_H * (long long)VB_L;
                            VT_2 = (ULL)VA_L * (ULL)VB_H;
                            VT_3 = (long long)VA_H * (ULL)VB_H;
                        }
                    else
                        {
                            VT_1 = (ULL)VA_H * (long long)VB_L;
                            VT_2 = (long long)VA_L * (ULL)VB_H;
                            VT_3 = (ULL)VA_H * (ULL)VB_H;
                        }

                    if (VT_1 < 0 && VT_2 < 0 && (VT_1 + VT_2) >= 0)
                        {
                            VT_3 += 1;
                        }
                    ALUOut = VT_3 + ((VT_1 + VT_2) >> 32);
                }
                break;
            case ALUOP_DIV:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = (long long)VA / (long long)VB;
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_DIVU:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = VA / VB;
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_REM:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = (long long)VA % (long long)VB;
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_REMU:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = VA % VB;
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_SLL:
                {
                    ALUOut = (VA << (int)(VB & MASK_SH));
                }
                break;
            case ALUOP_SRL:
                {
                    ALUOut = VA >> (int)(VB & MASK_SH);
                }
                break;
            case ALUOP_SRA:
                {
                    ALUOut = (REG)((long long)VA >> (int)(VB & MASK_SH));
                }
                break;
            case ALUOP_AND:
                {
                    ALUOut = VA & VB;
                }
                break;
            case ALUOP_OR:
                {
                    ALUOut = VA | VB;
                }
                break;
            case ALUOP_XOR:
                {
                    ALUOut = VA ^ VB;
                }
                break;
            case ALUOP_SLT:
                {
                    ALUOut = ((long long)VA < (long long)VB) ? 1 : 0;
                }
                break;
            case ALUOP_SLTU:
                {
                    ALUOut = (VA < VB) ? 1 : 0;
                }
                break;
            case ALUOP_ADDW:
                {
                    ALUOut = EXT_SIGNED_DWORD((int)VA + (int)VB, 32);
                }
                break;
            case ALUOP_SUBW:
                {
                    ALUOut = EXT_SIGNED_DWORD((int)VA - (int)VB, 32);
                }
                break;
            case ALUOP_MULW:
                {
                    ALUOut = EXT_SIGNED_DWORD((int)VA * (int)VB, 32);
                }
                break;
            case ALUOP_DIVW:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = EXT_SIGNED_DWORD((int)VA / (int)VB, 32);
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_DIVUW:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = EXT_SIGNED_DWORD((unsigned int)VA / (unsigned int)VB, 32);
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_REMW:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = EXT_SIGNED_DWORD((int)VA % (int)VB, 32);
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_REMUW:
                {
                    if (VB != 0)
                        {
                            ALUWait = 39;
                            ALUOut = EXT_SIGNED_DWORD((unsigned int)VA % (unsigned int)VB, 32);
                        }
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
            case ALUOP_SLLW:
                {
                    ALUOut = EXT_SIGNED_DWORD(((unsigned int)VA << (int)(VB & MASK_SH)), 32);
                }
                break;
            case ALUOP_SRLW:
                {
                    ALUOut = EXT_SIGNED_DWORD(((unsigned int)VA >> (int)(VB & MASK_SH)), 32);
                }
                break;
            case ALUOP_SRAW:
                {
                    ALUOut = EXT_SIGNED_DWORD(((int)VA >> (int)(VB & MASK_SH)), 32);
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // update PC
    switch (Branch)
        {
            case BRANCH_NO:
                {
#ifdef PREDICT
                    if (BranchCmp != BRANCHCMP_NOP)
                        {
                            int existFlag = false;
                            if (PredictedBranch == BRANCH_NO)  // successful prediction
                                {
                                    PredictCorrectCount++;
                                    // printf("Predict succeed\n");
                                }
                            else
                                {
                                    Mispredicted = true;
                                }
                            for (int i = 0; i < BTB_SIZE; ++i)
                                {
                                    if (btb[i].valid && btb[i].InstPC == InstPC)
                                        {
                                            if (!btb[i].status1 && btb[i].status2)
                                                {
                                                    btb[i].status2 = false;
                                                }
                                            btb[i].status1 = false;
                                            existFlag = true;
                                            break;
                                        }
                                }
                            if (!existFlag)
                                {
                                    Mispredicted = true;
                                    btb[btbReplaceIdx].valid = true;
                                    btb[btbReplaceIdx].InstPC = InstPC;
                                    btb[btbReplaceIdx].PredictedPC = ALUOut;
                                    btb[btbReplaceIdx].status1 = false;
                                    btb[btbReplaceIdx].status2 = false;
                                    btbReplaceIdx = (btbReplaceIdx + 1) % BTB_SIZE;
                                }
                            if (Mispredicted)
                                PC = NextPC;
                        }
#endif
                }
                break;
            case BRANCH_YES:
                {
#ifdef PREDICT
                    int existFlag = false;
                    if (PredictedBranch == BRANCH_YES)  // successful prediction
                        {
                            PredictCorrectCount++;
                            // printf("Predict succeed\n");
                        }
                    else
                        {
                            Mispredicted = true;
                        }
                    for (int i = 0; i < BTB_SIZE; ++i)
                        {
                            if (btb[i].valid && btb[i].InstPC == InstPC)
                                {
                                    if (btb[i].status1)  // update BTB status
                                        {
                                            btb[i].status2 = true;
                                        }
                                    btb[i].status1 = true;
                                    existFlag = true;
                                    break;
                                }
                        }
                    if (!existFlag)
                        {
                            Mispredicted = true;
                            btb[btbReplaceIdx].valid = true;
                            btb[btbReplaceIdx].InstPC = InstPC;
                            btb[btbReplaceIdx].PredictedPC = ALUOut;
                            btb[btbReplaceIdx].status1 = true;
                            btb[btbReplaceIdx].status2 = false;
                            btbReplaceIdx = (btbReplaceIdx + 1) % BTB_SIZE;
                        }
                    if (Mispredicted)
                        PC = ALUOut;
#else
                    Mispredicted = true;
                    PC = ALUOut;
#endif
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // write EX_MEM
    EX_MEM.RegDst = RegDst;
    EX_MEM.NextPC = NextPC;
    EX_MEM.ALU_out = ALUOut;
    EX_MEM.VRs2 = VRs2;

    EX_MEM.Ctrl_MEM_MemWrite = MemWrite;
    EX_MEM.Ctrl_MEM_MemRead = MemRead;
    EX_MEM.Ctrl_WB_RegWrite = RegWrite;
}

void MEM()
{
    switch (StageMode[STAGE_MEM])
        {
            case MODE_STALL:
                {
#ifdef PRINT_MODE
                    printf("STALL MEM\n");
#endif
                    return;
                }
                break;
            case MODE_BUBBLE:
                {
#ifdef PRINT_MODE
                    printf("BUBBLE MEM\n");
#endif
                    MEM_WB.RegDst = R_zero;
                    MEM_WB.NextPC = 0;
                    MEM_WB.Mem_read = 0;
                    MEM_WB.ALU_out = 0;

                    MEM_WB.Ctrl_WB_RegWrite = REGWRITE_NO;

                    return;
                }
                break;
            default:
                break;
        }

    // read EX_MEM_old
    unsigned int RegDst = EX_MEM_old.RegDst;
    REG NextPC = EX_MEM_old.NextPC;
    REG ALUOut = EX_MEM_old.ALU_out;
    REG VRs2 = EX_MEM_old.VRs2;
    unsigned char MemWrite = EX_MEM_old.Ctrl_MEM_MemWrite;
    unsigned char MemRead = EX_MEM_old.Ctrl_MEM_MemRead;
    unsigned char RegWrite = EX_MEM_old.Ctrl_WB_RegWrite;

    REG VMemRead = 0;

    // read/write memory
    switch (MemWrite)
        {
            case MEMWRITE_NO:
                {
                }
                break;
            case MEMWRITE_BYTE:
                {
                    unsigned char vWriteByte = (unsigned char)VRs2;
                    WRITE_BYTE(ALUOut, vWriteByte);
                }
                break;
            case MEMWRITE_HWORD:
                {
                    unsigned short vWriteHword = (unsigned short)VRs2;
                    WRITE_HWORD(ALUOut, vWriteHword);
                }
                break;
            case MEMWRITE_WORD:
                {
                    unsigned int vWriteWord = (unsigned int)VRs2;
                    WRITE_WORD(ALUOut, vWriteWord);
                }
                break;
            case MEMWRITE_DWORD:
                {
                    WRITE_DWORD(ALUOut, VRs2);
                }
                break;
            default:
                ERROR(__LINE__);
        }

    switch (MemRead)
        {
            case MEMREAD_NO:
                {
                }
                break;
            case MEMREAD_BYTE:
                {
                    unsigned char vReadByte = READ_BYTE(ALUOut);
                    VMemRead = EXT_SIGNED_DWORD(vReadByte, 8);
                }
                break;
            case MEMREAD_HWORD:
                {
                    unsigned short vReadHword = READ_HWORD(ALUOut);
                    VMemRead = EXT_SIGNED_DWORD(vReadHword, 16);
                }
                break;
            case MEMREAD_WORD:
                {
                    unsigned int vReadWord = READ_WORD(ALUOut);
                    VMemRead = EXT_SIGNED_DWORD(vReadWord, 32);
                }
                break;
            case MEMREAD_DWORD:
                {
                    VMemRead = READ_DWORD(ALUOut);
                }
                break;
            case MEMREAD_BYTEU:
                {
                    unsigned char vReadByte = READ_BYTE(ALUOut);
                    VMemRead = EXT_UNSIGNED_DWORD(vReadByte, 8);
                }
                break;
            case MEMREAD_HWORDU:
                {
                    unsigned short vReadHword = READ_HWORD(ALUOut);
                    VMemRead = EXT_UNSIGNED_DWORD(vReadHword, 16);
                }
                break;
            case MEMREAD_WORDU:
                {
                    unsigned int vReadWord = READ_WORD(ALUOut);
                    VMemRead = EXT_UNSIGNED_DWORD(vReadWord, 32);
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // write MEM_WB
    MEM_WB.RegDst = RegDst;
    MEM_WB.NextPC = NextPC;
    MEM_WB.Mem_read = VMemRead;
    MEM_WB.ALU_out = ALUOut;

    MEM_WB.Ctrl_WB_RegWrite = RegWrite;
}

void WB()
{
    switch (StageMode[STAGE_WB])
        {
            case MODE_STALL:
                {
#ifdef PRINT_MODE
                    printf("STALL WB\n");
#endif
                    return;
                }
                break;
            case MODE_BUBBLE:
                {
#ifdef PRINT_MODE
                    printf("BUBBLE WB\n");
#endif
                    return;
                }
                break;
            default:
                break;
        }

    // read MEM_WB_old
    unsigned int RegDst = MEM_WB_old.RegDst;
    REG NextPC = MEM_WB_old.NextPC;
    REG VMemRead = MEM_WB_old.Mem_read;
    REG ALUOut = MEM_WB_old.ALU_out;
    unsigned char RegWrite = MEM_WB_old.Ctrl_WB_RegWrite;

    // write reg
    switch (RegWrite)
        {

            case REGWRITE_NO:
                {
                }
                break;
            case REGWRITE_VALE:
                {
                    reg[RegDst] = ALUOut;
                }
                break;
            case REGWRITE_VALP:
                {
                    reg[RegDst] = NextPC;
                }
                break;
            case REGWRITE_VALM:
                {
                    reg[RegDst] = VMemRead;
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // update instruction count
    InstCount++;
}
