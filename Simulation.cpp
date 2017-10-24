#include "Simulation.h"
using namespace std;

extern ULL cadr;
extern ULL csize;
extern ULL vadr;
extern ULL gp;
extern ULL madr;
extern ULL endPC;
extern ULL entry;
extern FILE *file;


//指令运行数
ULL inst_num = 0;

//系统调用退出指示
int exit_flag = 0;

//加载代码段
//初始化PC
void load_memory()
{
    memset(memory, 0, sizeof(int) * MEM_SIZE);
    fseek(file, coffset, SEEK_SET);
    fread(&memory[V_TO_I(cvadr)], 1, csize, file);
    fseek(file, doffset, SEEK_SET);
    fread(&memory[V_TO_I(dvadr)], 1, dsize, file);

    fclose(file);
}

int main()
{
    //解析elf文件
    read_elf();

    //加载内存
    load_memory();

    //设置入口地址
    PC = V_TO_I(entry);

    //设置全局数据段地址寄存器
    reg[R_gp] = gp;  //

    reg[R_sp] = P_TO_I(MEM_ED);  //栈基址 （sp寄存器）

    simulate();

    cout << "simulate over!" << endl;

    return 0;
}

void simulate()
{
    //结束PC的设置
    int end = (int)endPC / 4 - 1;
    while (PC != end)
        {
            //运行
            IF();
            ID();
            EX();
            MEM();
            WB();

            //更新中间寄存器
            IF_ID = IF_ID_old;
            ID_EX = ID_EX_old;
            EX_MEM = EX_MEM_old;
            MEM_WB = MEM_WB_old;

            if (exit_flag == 1)
                break;

            reg[0] = 0;  //一直为零
        }
}

void ERROR()
{
}

//取指令
void IF()
{
    // write IF_ID_old
    unsigned int inst = READ_WORD(PC);
    ULL NextPC;
    if (inst & 0x3 != 0x3)
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
    unsigned int inst = IF_ID.inst;
    int EXTop = EXTOP_NOP;
    unsigned int EXTSrc = 0;

    unsigned char RegDst = R_zero, ALUOp = ALUOP_NOP, ALUSrc = ALUSRC_NONE;
    unsigned char Branch = BRANCH_NO, MemRead = MEMREAD_NO, MemWrite = MEMWRITE_NO;
    unsigned char RegWrite = REGWRITE_NO, MemtoReg = MEMTOREG_NO;

    if (IF_ID.Ctrl_ID_InstSize == INSTSIZE_16)
        {
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
                                                        ERROR();
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
                                                        ERROR();
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
                                                    ERROR();
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
                                                        ERROR();
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
                                                        ERROR();
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
                                                        ERROR();
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
                                                    ERROR();
                                                }
                                        }
                                        break;
                                    default:
                                        ERROR();
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
                            EXTop = EXTOP_12;
                            ALUOp = ALUOP_ADD;
                            ALUSrc = ALUSRC_RS_IMM;
                            RegWrite = REGWRITE_VALM;
                            MemtoReg = MEMTOREG_YES;
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
                                        ERROR();
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
                                            EXTop = EXTOP_12;
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
                                                    EXTop = EXTOP_6;
                                                    ALUOp = ALUOP_SLL;
                                                }
                                            else
                                                {
                                                    ERROR();
                                                }
                                        }
                                        break;
                                    case F3_SLT:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTop = EXTOP_12;
                                            ALUOp = ALUOP_SLT;
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTop = EXTOP_12;
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
                                                            EXTop = EXTOP_6;
                                                            ALUOp = ALUOP_SRL;
                                                        }
                                                        break;
                                                    case IMM6_11_SRAI:
                                                        {
                                                            imm0_5 = GET_BITS(inst, 20, 25);
                                                            EXTSrc = imm0_5;
                                                            EXTop = EXTOP_6;
                                                            ALUOp = ALUOP_SRA;
                                                        }
                                                        break;
                                                    default:
                                                        ERROR();
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_OR:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTop = EXTOP_12;
                                            ALUOp = ALUOP_OR;
                                        }
                                        break;
                                    case F3_AND:
                                        {
                                            imm0_11 = GET_BITS(inst, 20, 31);
                                            EXTSrc = imm0_11;
                                            EXTop = EXTOP_12;
                                            ALUOp = ALUOP_AND;
                                        }
                                        break;
                                    default:
                                        ERROR();
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
                                    EXTop = EXTOP_12;
                                    RegDst = rd;
                                    ALUSrc = ALUSRC_RS_IMM;
                                    ALUOp = ALUOP_ADDIW;
                                    RegWrite = REGWRITE_VALE;
                                }
                            else
                                {
                                    ERROR();
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
                                    EXTop = EXTOP_12;
                                    RegDst = rd;
                                    ALUSrc = ALUSRC_RS_IMM;
                                    ALUOp = ALUOP_ADD;
                                    Branch = BRANCH_YES;
                                    RegWrite = REGWRITE_VALP;
                                }
                            else
                                {
                                    ERROR();
                                }
                        }
                        break;
                    case OP_ECALL:
                        {
                            ERROR();
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
                            EXTop = EXTOP_12;
                            ALUSrc = ALUSRC_RS_RT_IMM;
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
                                        ERROR();
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
                            EXTop = EXTOP_12;
                            ALUSrc = ALUSRC_RS_RT_IMM;

                            switch (funct3)
                                {
                                    case F3_EQ:
                                        {
                                            ALUOp = ALUOP_BEQ;
                                        }
                                        break;
                                    case F3_NE:
                                        {
                                            ALUOp = ALUOP_BNE;
                                        }
                                        break;
                                    case F3_LT:
                                        {
                                            ALUOp = ALUOP_BLT;
                                        }
                                        break;
                                    case F3_GE:
                                        {
                                            ALUOp = ALUOP_BGE;
                                        }
                                        break;
                                    default:
                                        ERROR();
                                        break;
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
                            EXTSrc = (imm12_31) << 12;
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
                        ERROR();
                        break;
                }
        }

    // write ID_EX_old
    ID_EX_old.Rd = RegDst;
    ID_EX_old.Rt = rs2;
    ID_EX_old.PC = IF_ID.PC;

    switch (EXTop)
        {
            case EXTOP_NOP:
                ID_EX_old.Imm = EXTSrc;
                break;
            case EXTOP_12:
                ID_EX_old.Imm = EXT_SIGNED_WORD(EXTSrc, 12);
                break;
            case EXTOP_6:
                ID_EX_old.Imm = EXT_SIGNED_WORD(EXTSrc, 6);
                break;
            default:
                break;
        }

    ID_EX_old.Reg_Rs = reg[rs1];
    ID_EX_old.Reg_Rt = reg[rs2];
    //...

    ID_EX_old.Ctrl_EX_ALUSrc = ALUSrc;
    ID_EX_old.Ctrl_EX_ALUOp = ALUOp;
    ID_EX_old.Ctrl_EX_RegDst = RegDst;

    ID_EX_old.Ctrl_M_MemWrite = MemWrite;
    ID_EX_old.Ctrl_M_MemRead = MemRead;

    ID_EX_old.Ctrl_WB_RegWrite = RegWrite;
    ID_EX_old.Ctrl_WB_MemtoReg = MemtoReg;

    ID_EX_old.Ctrl_UP_Branch = Branch;
    //....
}

//执行
void EX()
{
    // read ID_EX
    int temp_PC = ID_EX.PC;
    char RegDst = ID_EX.Ctrl_EX_RegDst;
    char ALUOp = ID_EX.Ctrl_EX_ALUOp;

    // Branch PC calulate
    //...

    // choose ALU input number
    //...

    // alu calculate
    int Zero;
    REG ALUout;
    switch (ALUOp)
        {
            default:;
        }

    // choose reg dst address
    int Reg_Dst;
    if (RegDst)
        {
        }
    else
        {
        }

    // write EX_MEM_old
    EX_MEM_old.ALU_out = ALUout;
    EX_MEM_old.PC = temp_PC;
    //.....
}

//访问存储器
void MEM()
{
    // read EX_MEM

    // complete Branch instruction PC change

    // read / write memory

    // write MEM_WB_old
}


//写回
void WB()
{
    // read MEM_WB

    // write reg
}

//更新PC
void UP()
{
}