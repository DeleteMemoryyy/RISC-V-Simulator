#ifndef REG_DEF_H_
#define REG_DEF_H_

typedef unsigned long long REG;
typedef unsigned long long ULL;

struct IFID
{
    unsigned int inst;
    ULL PC;
    unsigned char Ctrl_ID_InstSize;
} IF_ID, IF_ID_old;

#define INSTSIZE_16 0
#define INSTSIZE_32 1


struct IDEX
{
    unsigned int Rd, Rt;
    ULL PC;
    int Imm;
    REG Reg_Rs, Reg_Rt;

    unsigned char Ctrl_EX_ALUSrc;
    unsigned char Ctrl_EX_ALUOp;
    unsigned char Ctrl_EX_RegDst;

	unsigned char Ctrl_M_Branch;
    unsigned char Ctrl_M_MemWrite;
    unsigned char Ctrl_M_MemRead;

    unsigned char Ctrl_WB_RegWrite;
    unsigned char Ctrl_WB_MemtoReg;

} ID_EX, ID_EX_old;

#define ALUOP_NOP 0x0
#define ALUOP_ADD 0x1
#define ALUOP_SUB 0x2
#define ALUOP_MUL 0x3
#define ALUOP_MULH 0x4
#define ALUOP_DIV 0x5
#define ALUOP_REM 0x6
#define ALUOP_SLL 0x7
#define ALUOP_SRL 0x8
#define ALUOP_SRA 0x9
#define ALUOP_AND 0xa
#define ALUOP_OR 0xb
#define ALUOP_XOR 0xc
#define ALUOP_CLT 0xd
#define ALUOP_CEQ 0xe
#define ALUOP_CNE 0xf
#define ALUOP_CGE 0x10

#define ALUSRC_NONE 0
#define ALUSRC_RS_RT 1
#define ALUSRC_RS_IMM 2


#define BRANCH_NO 0
#define BRANCH_YES 1

#define MEMREAD_NO 0
#define MEMREAD_BYTE 1
#define MEMREAD_HWORD 2
#define MEMREAD_WORD 3
#define MEMREAD_DWORD 4

#define MEMWRITE_NO 0
#define MEMWRITE_BYTE 1
#define MEMWRITE_HWORD 2
#define MEMWRITE_WORD 3
#define MEMWRITE_DOWRD 4

#define REGWRITE_NO 0
#define REGWRITE_YES 1

#define MEMTOREG_NO 0
#define MEMTOREG_YES 1

struct EXMEM
{
    ULL PC;
    unsigned int Reg_dst;
    REG ALU_out;
    unsigned int Zero;
    REG Reg_Rt;

    unsigned char Ctrl_M_Branch;
    unsigned char Ctrl_M_MemWrite;
    unsigned char Ctrl_M_MemRead;

    unsigned char Ctrl_WB_RegWrite;
    unsigned char Ctrl_WB_MemtoReg;

} EX_MEM, EX_MEM_old;

struct MEMWB
{
    unsigned int Mem_read;
    REG ALU_out;
    unsigned int Reg_dst;

    unsigned char Ctrl_WB_RegWrite;
    unsigned char Ctrl_WB_MemtoReg;

} MEM_WB, MEM_WB_old;

#define OP_ARIT_REG 0x33
#define OP_LOAD 0x3
#define OP_ARIT_IMM 0x13
#define OP_ADDIW 0x1b
#define OP_JALR 0x67
#define OP_ECALL 0x73
#define OP_STORE 0x23
#define OP_BRANCH 0x63
#define OP_AUIPC 0x17
#define OP_LUI 0x37
#define OP_JAL 0x6f

#define F3_ADD 0x0
#define F3_MUL 0x0
#define F3_SUB 0x0
#define F3_SLL 0x1
#define F3_MULH 0x1
#define F3_SLT 0x2
#define F3_XOR 0x4
#define F3_DIV 0x4
#define F3_SRL 0x5
#define F3_SRA 0x5
#define F3_OR 0x6
#define F3_REM 0x6
#define F3_AND 0x7
#define F3_BYTE 0x0
#define F3_HWORD 0x1
#define F3_WORD 0x2
#define F3_DWORD 0x3
#define F3_ADDIW 0x0
#define F3_JALR 0x0
#define F3_ECALL 0x0
#define F3_EQ 0x0
#define F3_NE 0x1
#define F3_LT 0x4
#define F3_GE 0x5

#define F7_ADD 0x0
#define F7_MUL 0x1
#define F7_SUB 0x20
#define F7_SLL 0x0
#define F7_MULH 0x1
#define F7_SLT 0x0
#define F7_XOR 0x0
#define F7_DIV 0x1
#define F7_SRL 0x0
#define F7_SRA 0x20
#define F7_OR 0x0
#define F7_REM 0x1
#define F7_AND 0x0
#define F7_ECALL 0x0

#define IMM6_11_SLLI 0x0
#define IMM6_11_SRLI 0x0
#define IMM6_11_SRAI 0x10


// #define OP_JAL 111
// #define OP_R 51

// #define F3_ADD 0
// #define F3_MUL 0

// #define F7_MSE 1
// #define F7_ADD 0

// #define OP_I 19
// #define F3_ADDI 0

// #define OP_SW 35
// #define F3_SB 0

// #define OP_LW 3
// #define F3_LB 0

// #define OP_BEQ 99
// #define F3_BEQ 0

// #define OP_IW 27
// #define F3_ADDIW 0

// #define OP_RW 59
// #define F3_ADDW 0
// #define F7_ADDW 0


// #define OP_SCALL 115
// #define F3_SCALL 0
// #define F7_SCALL 0

#define R_zero 0
#define R_ra 1
#define R_sp 2
#define R_gp 3
#define R_tp 4
#define R_t0 5
#define R_t1 6
#define R_t2 7
#define R_s0 8
#define R_s1 9
#define R_a0 10
#define R_a1 11
#define R_a2 12
#define R_a3 13
#define R_a4 14
#define R_a5 15
#define R_a6 16
#define R_a7 17
#define R_s2 18
#define R_s3 19
#define R_s4 20
#define R_s5 21
#define R_s6 22
#define R_s7 23
#define R_s8 24
#define R_s9 25
#define R_s10 26
#define R_s11 27
#define R_t3 28
#define R_t4 29
#define R_t5 30
#define R_t6 31

#endif