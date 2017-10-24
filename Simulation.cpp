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
    PC = entry;

    //设置全局数据段地址寄存器
    reg[R_gp] = gp;  //

    reg[R_sp] = P_TO_V(MEM_ED);  //栈基址 （sp寄存器）

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
    unsigned int inst = READ_WORD(V_TO_I(PC));

    if (inst & 0x3 != 0x3)
        {
            IF_ID_old.Ctrl_ID_InstSize = INSTSIZE_16;
        }
    else
        {
            IF_ID_old.Ctrl_ID_InstSize = INSTSIZE_32;
        }

    IF_ID_old.inst = inst;
    IF_ID_old.PC = PC;
}

//译码
void ID()
{
    // Read IF_ID
    unsigned int inst = IF_ID.inst;
    int EXTop = 0;
    unsigned int EXTSrc = 0;

    unsigned char RegDst = R_zero, ALUOp = ALUOP_NOP, ALUSrc = ALUSRC_NONE;
    unsigned char Branch = BRANCH_NO, MemRead = MEMREAD_NO, MemWrite = MEMWRITE_NO;
    unsigned char RegWrite = REGWRITE_NO, MemtoReg = MEMTOREG_NO;

    if (IF_ID.Ctrl_ID_InstSize == INSTSIZE_16)
        {
        }
    else if (IF_ID.Ctrl_ID_InstSize == INSTSIZE_32)
        {
            opcode = GET_BIT(inst, 0, 6);
            switch (opcode)
                {
                    case OP_ARIT_REG:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            rd = GET_BIT(inst, 7, 11);
                            rs1 = GET_BIT(inst, 15, 19);
                            rs2 = GET_BIT(inst, 7, 11);
                            RegDst = rd;
                            ALUSrc = ALUSRC_RS_RT;
                            RegWrite = REGWRITE_YES;
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                            funct7 = GET_BIT(inst, 25, 31);
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
                                            funct7 = GET_BIT(inst, 25, 31);
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
                                            funct7 = GET_BIT(inst, 25, 31);
                                            if (funct7 == F7_SLT)
                                                {
                                                    ALUOp = ALUOP_CLT;
                                                }
                                            else
                                                {
                                                    ERROR();
                                                }
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                            funct7 = GET_BIT(inst, 25, 31);
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
                                            funct7 = GET_BIT(inst, 25, 31);
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
                                            funct7 = GET_BIT(inst, 25, 31);
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
                                            funct7 = GET_BIT(inst, 25, 31);
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
                            funct3 = GET_BIT(inst, 12, 14);
                            rd = GET_BIT(inst, 7, 11);
                            rs1 = GET_BIT(inst, 15, 19);
                            
                            switch (funct3)
                                {
                                    case F3_BYTE:
                                        {
                                        }
                                        break;
                                    case F3_HWORD:
                                        {
                                        }
                                        break;
                                    case F3_WORD:
                                        {
                                        }
                                        break;
                                    case F3_DWORD:
                                        {
                                        }
                                        break;
                                    default:
                                        break;
                                }
                        }
                        break;
                    case OP_ARIT_IMM:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            switch (funct3)
                                {
                                    case F3_ADD:
                                        {
                                        }
                                        break;
                                    case F3_SLL:
                                        {
                                            imm6_11 = GET_BIT(inst, 26, 31);
                                            if (imm6_11 == IMM6_11_SLLI)
                                                {
                                                }
                                            else
                                                {
                                                }
                                        }
                                        break;
                                    case F3_SLT:
                                        {
                                        }
                                        break;
                                    case F3_XOR:
                                        {
                                        }
                                        break;
                                    case F3_SRL:
                                        {
                                            imm6_11 = GET_BIT(inst, 26, 31);
                                            switch (imm6_11)
                                                {
                                                    case IMM6_11_SRLI:
                                                        {
                                                        }
                                                        break;
                                                    case IMM6_11_SRAI:
                                                        {
                                                        }
                                                        break;
                                                    default:
                                                        break;
                                                }
                                        }
                                        break;
                                    case F3_OR:
                                        {
                                        }
                                        break;
                                    case F3_AND:
                                        {
                                        }
                                        break;
                                    default:
                                        break;
                                }
                        }
                        break;
                    case OP_ADDIW:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            if (funct3 == F3_ADDIW)
                                {
                                }
                            else
                                {
                                }
                        }
                        break;
                    case OP_JALR:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            if (funct3 == F3_JALR)
                                {
                                }
                            else
                                {
                                }
                        }
                        break;
                    case OP_ECALL:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            if (funct3 == F3_ECALL)
                                {
                                    funct7 = GET_BIT(inst, 25, 31);
                                    if (funct7 == F7_ECALL)
                                        {
                                        }
                                    else
                                        {
                                        }
                                }
                            else
                                {
                                }
                        }
                        break;
                    case OP_STORE:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            switch (funct3)
                                {
                                    case F3_BYTE:
                                        {
                                        }
                                        break;
                                    case F3_HWORD:
                                        {
                                        }
                                        break;
                                    case F3_WORD:
                                        {
                                        }
                                        break;
                                    case F3_DWORD:
                                        {
                                        }
                                        break;
                                    default:
                                        break;
                                }
                        }
                        break;
                    case OP_BRANCH:
                        {
                            funct3 = GET_BIT(inst, 12, 14);
                            switch (funct3)
                                {
                                    case F3_EQ:
                                        {
                                        }
                                        break;
                                    case F3_NE:
                                        {
                                        }
                                        break;
                                    case F3_LT:
                                        {
                                        }
                                        break;
                                    case F3_GE:
                                        {
                                        }
                                        break;
                                    default:
                                        break;
                                }
                        }
                        break;
                    case OP_AUIPC:
                        {
                        }
                        break;
                    case OP_LUI:
                        {
                        }
                        break;
                    case OP_JAL:
                        {
                        }
                        break;
                    default:
                        break;
                }
        }

    // write ID_EX_old
    ID_EX_old.Rd = rd;
    ID_EX_old.Rt = rt;
    ID_EX_old.Imm = ext_signed(EXTsrc, EXTop);
    //...

    ID_EX_old.Ctrl_EX_ALUOp = ALUop;
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