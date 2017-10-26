#include "Simulation.h"
using namespace std;

// memory
unsigned char memory[MEM_SIZE] = {0};
// regisiter set
REG reg[32] = {0};
// PC
ULL PC = 0;

IFID IF_ID, IF_ID_old;
IDEX ID_EX, ID_EX_old;
EXMEM EX_MEM, EX_MEM_old;
MEMWB MEM_WB, MEM_WB_old;
WBUP WB_UP, WB_UP_old;

// instruction sections
unsigned int opcode = 0;
unsigned int funct3 = 0, funct7 = 0;
unsigned int shamt = 0;
unsigned int rs1 = 0, rs2 = 0, rd = 0;
unsigned int imm0_11 = 0;
unsigned int imm12_31 = 0;
unsigned int imm6_11 = 0;
unsigned int imm5_11 = 0;
unsigned int imm0_5 = 0;
unsigned int imm0_4 = 0;

// instruction running number
ULL inst_num = 0;

int exit_flag = 0;


// load code and data
void load_memory()
{
    memset(memory, 0, sizeof(char) * MEM_SIZE);
    fseek(file, coffset, SEEK_SET);
    fread(&memory[V_TO_P(cvadr)], 1, csize, file);
    fseek(file, doffset, SEEK_SET);
    fread(&memory[V_TO_P(dvadr)], 1, dsize, file);

    fclose(file);
}

int main()
{
    read_elf();

    load_memory();

    PC = entry;

    reg[R_gp] = gp;

    reg[R_sp] = P_TO_V(MEM_ED);

    simulate();

    cout << "simulate over!" << endl;

    return 0;
}

void simulate()
{
    ULL end = entry + tsize;
    while (PC != end)
        {
            // run
            IF();
            IF_ID = IF_ID_old;
            ID();
            ID_EX = ID_EX_old;
            EX();
            EX_MEM = EX_MEM_old;
            MEM();
            MEM_WB = MEM_WB_old;
            WB();
            WB_UP = WB_UP_old;
            UP();

            // update register

            if (exit_flag == 1)
                break;

            reg[0] = 0;  // register zero should alwarys be 0
        }
}

void ERROR(int line)
{
    printf("ERROR!: %d\n", line);
}

//取指令
void IF()
{
    // write IF_ID_old
    unsigned int inst = READ_WORD(PC);
    ULL NextPC;
    if ((inst & 0x3) != 0x3)
        {
            IF_ID_old.Ctrl_ID_InstSize = INSTSIZE_16;
            NextPC = PC + 2;
        }
    else
        {
            IF_ID_old.Ctrl_ID_InstSize = INSTSIZE_32;
            NextPC = PC + 4;
        }

    IF_ID_old.inst = inst;
    IF_ID_old.PC = NextPC;
}

//译码
void ID()
{
    // Read IF_ID
    ULL NextPC = IF_ID.PC;
    unsigned int inst = IF_ID.inst;
    unsigned char EXTOp = EXTOP_SIGNED;
    unsigned int EXTBit = 0;
    unsigned int EXTSrc = 0;
    unsigned int RegDst = R_zero;
    unsigned char ALUOp = ALUOP_NOP, ALUSrc = ALUSRC_NONE, BranchCmp = BRANCHCMP_NOP;
    unsigned char MemRead = MEMREAD_NO, MemWrite = MEMWRITE_NO;
    unsigned char RegWrite = REGWRITE_NO;
    unsigned char Branch = BRANCH_NO;
    if (IF_ID.Ctrl_ID_InstSize == INSTSIZE_16)
        {
            opcode = GET_BITS(inst, 0, 1);
            funct3 = GET_BITS(inst, 13, 15);
            switch (opcode)
                {
                    case OPC_00:
                        {
                            rs1 = RVC_TO_R(GET_BITS(inst, 7, 9));
                            switch (funct3)
                                {
                                    case F3C_ADDI4SPN:
                                        {
                                            rd = RVC_TO_R(GET_BITS(inst, 2, 4));
                                            rs1 = R_sp;
                                            EXTSrc = (GET_BITS(inst, 7, 11) << 6) &
                                                     (GET_BITS(inst, 11, 12) << 4) &
                                                     (GET_BIT(inst, 5) << 3) &
                                                     (GET_BIT(inst, 6) << 2);
                                            EXTBit = 10;
                                            EXTOp = EXTOP_UNSIGED;
                                            RegDst = rd;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            RegWrite = REGWRITE_VALE;
                                        }
                                        break;
                                    case F3C_LW:
                                        {
                                            rd = RVC_TO_R(GET_BITS(inst, 2, 4));
                                            EXTSrc = (GET_BIT(inst, 5) << 6) &
                                                     (GET_BITS(inst, 10, 12) << 3) &
                                                     (GET_BIT(inst, 6) << 2);
                                            EXTBit = 7;
                                            EXTOp = EXTOP_UNSIGED;
                                            RegDst = rd;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            MemRead = MEMREAD_WORD;
                                            RegWrite = REGWRITE_VALM;
                                        }
                                        break;
                                    case F3C_LD:
                                        {
                                            rd = RVC_TO_R(GET_BITS(inst, 2, 4));
                                            EXTSrc = (GET_BITS(inst, 5, 6) << 6) &
                                                     (GET_BITS(inst, 10, 12) << 3);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            RegDst = rd;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            MemRead = MEMREAD_DWORD;
                                            RegWrite = REGWRITE_VALM;
                                        }
                                        break;
                                    case F3C_SW:
                                        {
                                            rs2 = RVC_TO_R(GET_BITS(inst, 2, 4));
                                            EXTSrc = (GET_BIT(inst, 5) << 6) &
                                                     (GET_BITS(inst, 10, 12) << 3) &
                                                     (GET_BIT(inst, 6) << 2);
                                            EXTBit = 7;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            MemWrite = MEMWRITE_WORD;
                                        }
                                        break;
                                    case F3C_SD:
                                        {
                                            rs2 = RVC_TO_R(GET_BITS(inst, 2, 4));
                                            EXTSrc = (GET_BITS(inst, 5, 6) << 6) &
                                                     (GET_BITS(inst, 10, 12) << 3);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            MemWrite = MEMWRITE_WORD;
                                        }
                                        break;
                                    default:
                                        ERROR();
                                }
                        }
                        break;
                    case OPC_01:
                        {
                            switch (funct3)
                                {
                                    case F3C_ADDI:
                                        {
                                            rd = GET_BITS(inst, 7, 11);
                                            rs1 = rd;
                                            EXTSrc =
                                                (GET_BIT(inst, 12) << 5) & (GET_BITS(inst, 2, 6));
                                            EXTBit = 6;
                                            RegDst = rd;
                                            ALUOp = ALUOP_ADD;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            RegWrite = REGWRITE_VALE;
                                        }
                                        break;
                                    case F3C_ADDIW:
                                        {
                                            rd = GET_BITS(inst, 7, 11);
                                            rs1 = rd;
                                            EXTSrc =
                                                (GET_BIT(inst, 12) << 5) & (GET_BITS(inst, 2, 6));
                                            EXTBit = 6;
                                            RegDst = rd;
                                            ALUOp = ALUOP_ADDW;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            RegWrite = REGWRITE_VALE;
                                        }
                                    case F3C_LI:
                                        {
                                            rd = GET_BITS(inst, 7, 11);
                                            HINT(rd == 0);
                                            rs1 = R_zero;
                                            EXTSrc =
                                                (GET_BIT(inst, 12) << 5) & (GET_BITS(inst, 2, 6));
                                            EXTBit = 6;
                                            RegDst = rd;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            ALUOp = ALUOP_ADD;
                                            RegWrite = REGWRITE_VALE;
                                        }
                                        break;
                                    case F3C_LUI:
                                        {
                                            rd = GET_BITS(inst, 7, 11);
                                            HINT(rd == 0);
                                            if (rd != R_sp)  // C.LUI
                                                {
                                                    rs1 = R_zero;
                                                    EXTSrc = (GET_BIT(inst, 12) << 17) &
                                                             (GET_BITS(inst, 2, 6) << 12);
                                                    EXTBit = 18;
                                                    RegDst = rd;
                                                    ALUSrc = ALUSRC_RS_IMM;
                                                    ALUOp = ALUOP_ADD;
                                                    RegWrite = REGWRITE_VALE;
                                                }
                                            else  // C.ADDI16SPN
                                                {
                                                    rs1 = rd;
                                                    EXTSrc = (GET_BIT(inst, 12) << 9) &
                                                             (GET_BITS(inst, 3, 4) << 7) &
                                                             (GET_BIT(inst, 5) << 6) &
                                                             (GET_BIT(inst, 2) << 5) &
                                                             (GET_BIT(inst, 6) << 4);
                                                    EXTBit = 10;
                                                    RegDst = rd;
                                                    ALUOp = ALUOP_ADD;
                                                    ALUSrc = ALUSRC_RS_IMM;
                                                    RegWrite = REGWRITE_VALE;
                                                }
                                        }
                                        break;
                                    case F3C_ARIT:
                                        {
                                            unsigned int funct2_1 = GET_BITS(inst, 10, 11);
                                            switch (funct2_1)
                                                {
                                                    case F2C_1_SRLI:
                                                        {
                                                            rd = RVC_TO_R(GET_BITS(inst, 10, 11));
                                                            rs1 = rd;
                                                            EXTSrc = (GET_BIT(inst, 12) << 5) &
                                                                     (GET_BITS(inst, 2, 6));
                                                            EXTBit = 6;
                                                            RegDst = rd;
                                                            ALUOp = ALUOP_SRL;
                                                            ALUSrc = ALUSRC_RS_IMM;
                                                            RegWrite = REGWRITE_VALE;
                                                        }
                                                        break;
                                                    case F2C_1_SRAI:
                                                        {
                                                            rd = RVC_TO_R(GET_BITS(inst, 10, 11));
                                                            rs1 = rd;
                                                            EXTSrc = (GET_BIT(inst, 12) << 5) &
                                                                     (GET_BITS(inst, 2, 6));
                                                            EXTBit = 6;
                                                            RegDst = rd;
                                                            ALUOp = ALUOP_SRA;
                                                            ALUSrc = ALUSRC_RS_IMM;
                                                            RegWrite = REGWRITE_VALE;
                                                        }
                                                        break;
                                                    case F2C_1_ANDI:
                                                        {
                                                            rd = RVC_TO_R(GET_BITS(inst, 10, 11));
                                                            rs1 = rd;
                                                            EXTSrc = (GET_BIT(inst, 12) << 5) &
                                                                     (GET_BITS(inst, 2, 6));
                                                            EXTBit = 6;
                                                            RegDst = rd;
                                                            ALUOp = ALUOP_AND;
                                                            ALUSrc = ALUSRC_RS_IMM;
                                                            RegWrite = REGWRITE_VALE;
                                                        }
                                                        break;
                                                    case F2C_1_REG:
                                                        {
                                                            unsigned int funct1 = GET_BIT(inst, 12);
                                                            unsigned int funct2_2 =
                                                                GET_BITS(inst, 10, 11);

                                                            rd = RVC_TO_R(GET_BITS(inst, 10, 11));
                                                            rs1 = rd;
                                                            rs2 = RVC_TO_R(GET_BIT(inst, 2, 4));
                                                            RegDst = rd;
                                                            ALUSrc = ALUSRC_RS_RT;
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
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_XOR:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_XOR;
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_OR:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_OR;
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_AND:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_AND;
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
                                                                                        }
                                                                                        break;
                                                                                    case F2C_2_ADDW:
                                                                                        {
                                                                                            ALUOp =
                                                                                                ALUOP_ADDW;
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
                                                (GET_BIT(inst, 12) << 11) &
                                                (GET_BIT(inst, 8) << 10) &
                                                (GET_BITS(inst, 9, 10) << 8) &
                                                (GET_BIT(inst, 6) << 7) & (GET_BIT(inst, 7) << 6) &
                                                (GET_BIT(inst, 2) << 5) & (GET_BIT(inst, 11) << 4) &
                                                (GET_BITS(3, 5) << 1);
                                            EXTBit = 12;
                                            ALUSrc = ALUSRC_PC_IMM;
                                            ALUOp = ALUOP_ADD;
                                            Branch = BRANCH_YES;
                                        }
                                        break;
                                    case F3C_BEQZ:
                                        {
                                            rs1 = RVC_TO_R(GET_BITS(inst, 7, 9));
                                            rs2 = R_zero;
                                            EXTSrc = (GET_BIT(inst, 12) << 8) &
                                                     (GET_BITS(inst, 5, 6) << 6) &
                                                     (GET_BIT(inst, 2) << 5) &
                                                     (GET_BIT(inst, 10, 11) << 3) &
                                                     (GET_BITS(inst, 3, 4) << 1);
                                            EXTBit = 9;
                                            BranchCmp = BRANCHCMP_EQ;
                                            ALUSrc = ALUSRC_PC_IMM;
                                            ALUOp = ALUOP_ADD;
                                        }
                                        break;
                                    case f3c_BENZ:
                                        {
                                            rs1 = RVC_TO_R(GET_BITS(inst, 7, 9));
                                            rs2 = R_zero;
                                            EXTSrc = (GET_BIT(inst, 12) << 8) &
                                                     (GET_BITS(inst, 5, 6) << 6) &
                                                     (GET_BIT(inst, 2) << 5) &
                                                     (GET_BIT(inst, 10, 11) << 3) &
                                                     (GET_BITS(inst, 3, 4) << 1);
                                            EXTBit = 9;
                                            BranchCmp = BRANCHCMP_NE;
                                            ALUSrc = ALUSRC_PC_IMM;
                                            ALUOp = ALUOP_ADD;
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
                                            rd = GET_BITS(inst, 7, 11);
                                            rs1 = rd;
                                            EXTSrc =
                                                (GET_BIT(inst, 12) << 5) & (GET_BITS(inst, 2, 6));
                                            EXTBit = 6;
                                            RegDst = rd;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            ALUOp = ALUOP_SLL;
                                            RegWrite = REGWRITE_VALE;
                                        }
                                        break;
                                    case F3C_LWSP:
                                        {
                                            rd = GET_BITS(inst, 7, 11);
                                            r1 = R_sp;
                                            EXTSrc = (GET_BITS(inst, 2, 3) << 6) &
                                                     (GET_BIT(inst, 12) << 5) &
                                                     (GET_BITS(inst, 4, 6) << 2);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            RegDst = rd;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemRead = MEMREAD_WORD;
                                            RegWrite = REGWRITE_VALM;
                                        }
                                        break;
                                    case F3C_LDSP:
                                        {
                                            r1 = R_sp;
                                            EXTSrc = (GET_BITS(inst, 2, 4) << 6) &
                                                     (GET_BIT(inst, 12) << 5) &
                                                     (GET_BITS(inst, 5, 6) << 3);
                                            EXTBit = 9;
                                            EXTOp = EXTOP_UNSIGED;
                                            RegDst = rd;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemRead = MEMREAD_DWORD;
                                            RegWrite = REGWRITE_VALM;
                                        }
                                        break;
                                    case F3C_JR:
                                        {
                                            unsigned int funct1 = GET_BIT(inst, 12);
                                            rs2 = GET_BITS(inst, 2, 6);
                                            switch (funct1)
                                                {
                                                    case F1C_JRMV:
                                                        {
                                                            if (rs2 == 0)   // C.JR
                                                                {
                                                                    rs1 = GET_BITS(inst, 7, 11);
                                                                    ALUSrc = ALUSRC_RS_IMM;
                                                                    ALUOp = ALUOP_ADD;
                                                                    Branch = BRANCH_YES;
                                                                }
                                                            else    // C.MV
                                                                {
                                                                    rd = GET_BITS(inst, 7, 11);
                                                                    rs1 = R_zero;
                                                                    RegDst = rd;
                                                                    ALUSrc = ALUSRC_RS_RT;
                                                                    ALUOp = ALUOP_ADD;
                                                                    RegWrite = REGWRITE_VALE;
                                                                }
                                                        }
                                                        break;
                                                    case F1C_JALRADD:
                                                        {
                                                            if(rs ==0)  // C.JALR
                                                            {
                                                                rs1 = GET_BITS(inst, 7, 11);
                                                                ALUSrc = ALUSRC_RS_IMM;
                                                                ALUOp = ALUOP_ADD;
                                                                RegWrite = REGWRITE_VALP;
                                                                Branch = BRANCH_YES;
                                                            }
                                                            else    // C.ADD
                                                            {
                                                                rd = GET_BITS(inst, 7, 11);
                                                                rs1 = rd;
                                                                RegDst = rd;
                                                                ALUSrc = ALUSRC_RS_RT;
                                                                ALUOp = ALUOP_ADD;
                                                                RegWrite = REGWRITE_VALE;
                                                            }
                                                        }
                                                        break;
                                                    default:
                                                        ERROR();
                                                }
                                        }
                                        break;
                                    case F3C_SWSP:
                                        {
                                            rs1 = R_sp;
                                            rs2 = GET_BITS(inst, 2, 6);
                                            EXTSrc = (GET_BITS(inst, 7, 8) << 6) &
                                                     (GET_BITS(9, 12) << 2);
                                            EXTBit = 8;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemWrite = MEMWRITE_WORD;
                                        }
                                        break;
                                    case F3C_SDSP:
                                        {
                                            rs1 = R_sp;
                                            rs2 = GET_BITS(inst, 2, 6);
                                            EXTSrc = (GET_BITS(inst, 7, 9) << 6) &
                                                     (GET_BITS(10, 12) << 3);
                                            EXTBit = 9;
                                            EXTOp = EXTOP_UNSIGED;
                                            ALUSrc = ALUSRC_RS_IMM;
                                            ALUOp = ALUOP_ADD;
                                            MemWrite = MEMWRITE_DWORD;
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
    else if (IF_ID.Ctrl_ID_InstSize == INSTSIZE_32)
        {
            opcode = GET_BITS(inst, 0, 6);
            switch (opcode)
                {
                    case OP_ARIT_REG:
                        {
                            funct3 = GET_BITS(inst, 12, 14);
                            rd = GET_BITS(inst, 7, 11);
                            rs1 = GET_BITS(inst, 15, 19);
                            rs2 = GET_BITS(inst, 20, 24);
                            RegDst = rd;
                            ALUSrc = ALUSRC_RS_RT;
                            RegWrite = REGWRITE_VALE;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            funct7 = GET_BITS(inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_ADD:
                                                        {
                                                            ALUOp = ALUOP_ADD;
                                                        }
                                                        break;
                                                    case F7_MUL:
                                                        {
                                                            ALUOp = ALUOP_MUL;
                                                        }
                                                        break;
                                                    case F7_SUB:
                                                        {
                                                            ALUOp = ALUOP_SUB;
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
                                            funct7 = GET_BITS(inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SLL:
                                                        {
                                                            ALUOp = ALUOP_SLL;
                                                        }
                                                        break;
                                                    case F7_MULH:
                                                        {
                                                            ALUOp = ALUOP_MULH;
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
                                            funct7 = GET_BITS(inst, 25, 31);
                                            if (funct7 == F7_SLT)
                                                {
                                                    ALUOp = ALUOP_SLT;
                                                }
                                            else
                                                {
                                                    ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            funct7 = GET_BITS(inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_XOR:
                                                        {
                                                            ALUOp = ALUOP_XOR;
                                                        }
                                                        break;
                                                    case F7_DIV:
                                                        {
                                                            ALUOp = ALUOP_DIV;
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
                                            funct7 = GET_BITS(inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_SRL:
                                                        {
                                                            ALUOp = ALUOP_SRL;
                                                        }
                                                        break;
                                                    case F7_SRA:
                                                        {
                                                            ALUOp = ALUOP_SRA;
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
                                            funct7 = GET_BITS(inst, 25, 31);
                                            switch (funct7)
                                                {
                                                    case F7_OR:
                                                        {
                                                            ALUOp = ALUOP_OR;
                                                        }
                                                        break;
                                                    case F7_REM:
                                                        {
                                                            ALUOp = ALUOP_REM;
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
                                            funct7 = GET_BITS(inst, 25, 31);
                                            if (funct7 == F7_AND)
                                                {
                                                    ALUOp = ALUOP_AND;
                                                }
                                            else
                                                {
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
                    case OP_LOAD:
                        {
                            funct3 = GET_BITS(inst, 12, 14);
                            rd = GET_BITS(inst, 7, 11);
                            rs1 = GET_BITS(inst, 15, 19);
                            imm0_11 = GET_BITS(inst, 20, 31);
                            RegDst = rd;
                            EXTSrc = imm0_11;
                            EXTBit = 12;
                            ALUOp = ALUOP_ADD;
                            ALUSrc = ALUSRC_RS_IMM;
                            RegWrite = REGWRITE_VALM;
                            switch (funct3)
                                {
                                    case F3_BYTE:
                                        {
                                            MemRead = MEMREAD_BYTE;
                                        }
                                        break;
                                    case F3_HWORD:
                                        {
                                            MemRead = MEMREAD_HWORD;
                                        }
                                        break;
                                    case F3_WORD:
                                        {
                                            MemRead = MEMREAD_WORD;
                                        }
                                        break;
                                    case F3_DWORD:
                                        {
                                            MemRead = MEMREAD_DWORD;
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
                            funct3 = GET_BITS(inst, 12, 14);
                            rd = GET_BITS(inst, 7, 11);
                            rs1 = GET_BITS(inst, 15, 19);
                            RegDst = rd;
                            ALUSrc = ALUSRC_RS_IMM;
                            RegWrite = REGWRITE_VALE;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_ADD;
                                        }
                                        break;
                                    case F3_SLL:
                                        {
                                            imm6_11 = GET_BITS(inst, 26, 31);
                                            if (imm6_11 == IMM6_11_SLLI)
                                                {
                                                    imm0_5 = GET_BITS(inst, 20, 25);
                                                    EXTSrc = imm0_5;
                                                    EXTBit = 6;
                                                    ALUOp = ALUOP_SLL;
                                                }
                                            else
                                                {
                                                    ERROR(__LINE__);
                                                }
                                        }
                                        break;
                                    case F3_SLT:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_SLT;
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_XOR;
                                        }
                                        break;
                                    case F3_SRL:
                                        {
                                            imm6_11 = GET_BITS(inst, 26, 31);
                                            switch (imm6_11)
                                                {
                                                    case IMM6_11_SRLI:
                                                        {
                                                            imm0_5 = GET_BITS(inst, 20, 25);
                                                            EXTSrc = imm0_5;
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRL;
                                                        }
                                                        break;
                                                    case IMM6_11_SRAI:
                                                        {
                                                            imm0_5 = GET_BITS(inst, 20, 25);
                                                            EXTSrc = imm0_5;
                                                            EXTBit = 6;
                                                            ALUOp = ALUOP_SRA;
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
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_OR;
                                        }
                                        break;
                                    case F3_AND:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTBit = 12;
                                            ALUOp = ALUOP_AND;
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                        break;
                                }
                        }
                        break;
                    case OP_ADDIW:
                        {
                            funct3 = GET_BITS(inst, 12, 14);
                            if (funct3 == F3_ADDIW)
                                {
                                    rd = GET_BITS(inst, 7, 11);
                                    rs1 = GET_BITS(inst, 15, 19);
                                    imm0_11 = GET_BITS(inst, 20, 31);
                                    EXTSrc = imm0_11;
                                    EXTBit = 12;
                                    RegDst = rd;
                                    ALUSrc = ALUSRC_RS_IMM;
                                    ALUOp = ALUOP_ADDW;
                                    RegWrite = REGWRITE_VALE;
                                }
                            else
                                {
                                    ERROR(__LINE__);
                                }
                        }
                        break;
                    case OP_JALR:
                        {
                            funct3 = GET_BITS(inst, 12, 14);
                            if (funct3 == F3_JALR)
                                {
                                    rd = GET_BITS(inst, 7, 11);
                                    rs1 = GET_BITS(inst, 15, 19);
                                    imm0_11 = GET_BITS(inst, 20, 31);
                                    EXTSrc = imm0_11;
                                    EXTBit = 12;
                                    RegDst = rd;
                                    ALUSrc = ALUSRC_RS_IMM;
                                    ALUOp = ALUOP_ADD;
                                    Branch = BRANCH_YES;
                                    RegWrite = REGWRITE_VALP;
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
                            funct3 = GET_BITS(inst, 12, 14);
                            rs1 = GET_BITS(inst, 15, 19);
                            rs2 = GET_BITS(inst, 20, 24);
                            imm0_4 = GET_BITS(inst, 7, 11);
                            imm5_11 = GET_BITS(inst, 25, 31);
                            EXTSrc = (imm5_11 << 5) & imm0_4;
                            EXTBit = 12;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;

                            switch (funct3)
                                {
                                    case F3_BYTE:
                                        {
                                            MemWrite = MEMWRITE_BYTE;
                                        }
                                        break;
                                    case F3_HWORD:
                                        {
                                            MemWrite = MEMWRITE_HWORD;
                                        }
                                        break;
                                    case F3_WORD:
                                        {
                                            MemWrite = MEMWRITE_WORD;
                                        }
                                        break;
                                    case F3_DWORD:
                                        {
                                            MemWrite = MEMWRITE_DWORD;
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
                            funct3 = GET_BITS(inst, 12, 14);
                            rs1 = GET_BITS(inst, 15, 19);
                            rs2 = GET_BITS(inst, 20, 24);
                            EXTSrc = (GET_BIT(inst, 31) << 12) & (GET_BIT(inst, 7) << 11) &
                                     (GET_BITS(inst, 25, 30) << 5) & (GET_BITS(inst, 8, 11) << 1);
                            EXTBit = 12;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;

                            switch (funct3)
                                {
                                    case F3_EQ:
                                        {
                                            BranchCmp = BRANCHCMP_EQ;
                                        }
                                        break;
                                    case F3_NE:
                                        {
                                            BranchCmp = BRANCHCMP_NE;
                                        }
                                        break;
                                    case F3_LT:
                                        {
                                            BranchCmp = BRANCHCMP_LT;
                                        }
                                        break;
                                    case F3_GE:
                                        {
                                            BranchCmp = BRANCHCMP_GE;
                                        }
                                        break;
                                    default:
                                        ERROR(__LINE__);
                                }
                        }
                        break;
                    case OP_AUIPC:
                        {
                            rd = GET_BITS(inst, 7, 11);
                            imm12_31 = GET_BITS(inst, 12, 31);
                            EXTSrc = (imm12_31) << 12;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;
                            RegWrite = REGWRITE_VALE;
                        }
                        break;
                    case OP_LUI:
                        {
                            rd = GET_BITS(inst, 7, 11);
                            rs1 = R_zero;
                            imm12_31 = GET_BITS(inst, 12, 31);
                            EXTSrc = ((imm12_31) << 12);
                            RegDst = rd;
                            ALUSrc = ALUSRC_RS_IMM;
                            ALUOp = ALUOP_ADD;
                            RegWrite = REGWRITE_VALE;
                        }
                        break;
                    case OP_JAL:
                        {
                            rd = GET_BITS(inst, 7, 11);
                            EXTSrc = (GET_BIT(inst, 31) << 20) & (GET_BITS(inst, 12, 19) << 12) &
                                     (GET_BIT(inst, 20) << 11) & (GET_BITS(inst, 21, 30) << 1);
                            RegDst = rd;
                            ALUSrc = ALUSRC_PC_IMM;
                            ALUOp = ALUOP_ADD;
                            RegWrite = REGWRITE_VALP;
                            Branch = BRANCH_YES;
                        }
                        break;
                    default:
                        ERROR(__LINE__);
                        break;
                }
        }

    // write ID_EX_old
    ID_EX_old.rd = RegDst;
    ID_EX_old.PC = IF_ID.PC;

    if (EXTBit != 0)
        {
            switch (EXTOp)
                {
                    case EXTOP_SIGNED:
                        {
                            ID_EX_old.Imm = EXT_SIGNED_DWORD(EXTSrc, EXTBit);
                        }
                        break;
                    case EXTOP_UNSIGED:
                        {
                            ID_EX_old.Imm = EXT_UNSIGNED_DWORD(EXTSrc, EXTBit);
                        }
                        break;
                    default:
                        ERROT(__LINE__);
                }
        }
    else
        ID_EX_old.Imm = EXTSrc;

    ID_EX_old.PC = NextPC;

    ID_EX_old.Reg_rs = reg[rs1];
    ID_EX_old.Reg_rt = reg[rs2];

    ID_EX_old.Ctrl_EX_BranchCmp = BranchCmp;
    ID_EX_old.Ctrl_EX_ALUSrc = ALUSrc;
    ID_EX_old.Ctrl_EX_ALUOp = ALUOp;
    ID_EX_old.Ctrl_M_MemWrite = MemWrite;
    ID_EX_old.Ctrl_M_MemRead = MemRead;
    ID_EX_old.Ctrl_WB_RegWrite = RegWrite;
    ID_EX_old.Ctrl_UP_Branch = Branch;
}

//执行
void EX()
{
    // read ID_EX
    unsigned int RegDst = ID_EX.rd;
    ULL NextPC = ID_EX.PC;
    REG RegRs = ID_EX.Reg_rs;
    REG RegRt = ID_EX.Reg_rt;
    long long Imm = ID_EX.Imm;
    ULL VA = 0, VB = 0;
    REG ALUOut = 0;

    unsigned char BranchCmp = ID_EX.Ctrl_EX_BranchCmp;
    unsigned char ALUSrc = ID_EX.Ctrl_EX_ALUSrc;
    unsigned char ALUOp = ID_EX.Ctrl_EX_ALUOp;

    unsigned char Branch = BRANCH_NO;

    switch (BranchCmp)
        {
            case BRANCHCMP_NOP:
                break;
            case BRANCHCMP_EQ:
                {
                    if (RegRs == RegRt)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_NE:
                {
                    if (RegRs != RegRt)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_LT:
                {
                    if (RegRs < RegRt)
                        {
                            Branch = BRANCH_YES;
                        }
                }
                break;
            case BRANCHCMP_GE:
                {
                    if (RegRs >= RegRt)
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
            case ALUSRC_RS_RT:
                {
                    VA = RegRs;
                    VB = RegRt;
                }
                break;
            case ALUSRC_RS_IMM:
                {
                    VA = RegRs;
                    VB = (ULL)Imm;
                }
                break;
            case ALUSRC_PC_IMM:
                {
                    VA = PC;
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
                    long long VA_H = (((long long)VA & MASK_H) >> 32),
                              VA_L = ((long long)VA & MASK_L),
                              VB_H = (((long long)VB & MASK_H) >> 32),
                              VB_L = ((long long)VB & MASK_L);
                    ALUOut = VA_H * VB_H + ((VA_H * VB_L) >> 32) + ((VA_L * VB_H) >> 32);
                }
                break;
            case ALUOP_DIV:
                {
                    if (VB != 0)
                        ALUOut = (long long)VA / (long long)VB;
                    else
                        {
                            ERROR(__LINE__);
                        }
                }
                break;
            case ALUOP_REM:
                {
                    ALUOut = (long long)VA % (long long)VB;
                }
                break;
            case ALUOP_SLL:
                {
                    ALUOut = VA << (VB & 0x3f);
                }
                break;
            case ALUOP_SRL:
                {
                    ALUOut = VA >> (VB & 0x3f);
                }
                break;
            case ALUOP_SRA:
                {
                    ALUOut = (REG)((long long)VA >> (VB & 0x3f));
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
            default:
                ERROR(__LINE__);
        }

    // write EX_MEM_old
    EX_MEM_old.PC = NextPC;
    EX_MEM_old.ALU_out = ALUOut;
    EX_MEM_old.rd = RegDst;
    EX_MEM_old.Reg_rt = RegRt;

    EX_MEM_old.Ctrl_M_MemWrite = ID_EX.Ctrl_M_MemWrite;
    EX_MEM_old.Ctrl_M_MemRead = ID_EX.Ctrl_M_MemRead;
    EX_MEM_old.Ctrl_WB_RegWrite = ID_EX.Ctrl_WB_RegWrite;
    EX_MEM_old.Ctrl_UP_Branch = Branch;
}

//访问存储器
void MEM()
{
    // read EX_MEM
    ULL NextPC = EX_MEM.PC;
    REG RegRt = EX_MEM.Reg_rt;
    REG ALUOut = EX_MEM.ALU_out;
    unsigned int RegDst = EX_MEM.rd;

    unsigned char MemWrite = EX_MEM.Ctrl_M_MemWrite;
    unsigned char MemRead = EX_MEM.Ctrl_M_MemRead;

    REG VMemRead = 0;

    // read / write memory
    switch (MemWrite)
        {
            case MEMWRITE_NO:
                break;
            case MEMWRITE_BYTE:
                {
                    unsigned char vWriteByte = (unsigned char)RegRt;
                    WRITE_BYTE(ALUOut, vWriteByte);
                }
                break;
            case MEMWRITE_HWORD:
                {
                    unsigned short vWriteHword = (unsigned short)RegRt;
                    WRITE_HWORD(ALUOut, vWriteHword);
                }
                break;
            case MEMWRITE_WORD:
                {
                    unsigned int vWriteWord = (unsigned int)RegRt;
                    WRITE_WORD(ALUOut, vWriteWord);
                }
                break;
            case MEMWRITE_DWORD:
                {
                    WRITE_DWORD(ALUOut, RegRt);
                }
                break;
            default:
                ERROR(__LINE__);
        }

    switch (MemRead)
        {
            case MEMREAD_NO:
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
                    unsigned char vReadWord = READ_WORD(ALUOut);
                    VMemRead = EXT_SIGNED_DWORD(vReadWord, 32);
                }
                break;
            case MEMREAD_DWORD:
                {
                    VMemRead = READ_DWORD(ALUOut);
                }
                break;
            default:
                ERROR(__LINE__);
        }

    // write MEM_WB_old
    MEM_WB_old.PC = NextPC;
    MEM_WB_old.rd = RegDst;
    MEM_WB_old.Mem_read = VMemRead;
    MEM_WB_old.ALU_out = ALUOut;

    MEM_WB_old.Ctrl_WB_RegWrite = EX_MEM.Ctrl_WB_RegWrite;
    MEM_WB_old.Ctrl_UP_Branch = EX_MEM.Ctrl_UP_Branch;
}


//写回
void WB()
{
    // read MEM_WB
    ULL NextPC = MEM_WB.PC;
    REG VMemRead = MEM_WB.Mem_read;
    REG ALUOut = MEM_WB.ALU_out;
    unsigned int RegDst = MEM_WB_old.rd;

    unsigned char RegWrite = MEM_WB.Ctrl_WB_RegWrite;

    // write reg
    switch (RegWrite)
        {
            case REGWRITE_NO:
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

    // write WB_UP_old
    WB_UP_old.PC = NextPC;
    WB_UP_old.ALU_out = ALUOut;

    WB_UP_old.Ctrl_UP_Branch = MEM_WB.Ctrl_UP_Branch;
}

//更新PC
void UP()
{
    ULL NextPC = WB_UP.PC;
    REG ALUOut = WB_UP.ALU_out;

    unsigned char Branch = WB_UP.Ctrl_UP_Branch;

    // update PC
    switch (Branch)
        {
            case BRANCH_NO:
                {
                    PC = NextPC;
                }
                break;
            case BRANCH_YES:
                {
                    PC = ALUOut;
                }
                break;
            default:
                ERROR(__LINE__);
        }
}