#ifndef REG_DEF_H_
#define REG_DEF_H_

typedef unsigned long long REG;

typedef unsigned char STAGEMODE;

struct IFID
{
    unsigned int RegDst, RegRs1, RegRs2;
    REG InstPC;
    REG NextPC;
    unsigned int EXTBit,EXTSrc;

    unsigned char Ctrl_ID_EXTOp;

    unsigned char Ctrl_EX_BranchCmp;
    unsigned char Ctrl_EX_ALUSrc;
    unsigned char Ctrl_EX_ALUOp;
    unsigned char Ctrl_EX_Branch;

    unsigned char Ctrl_MEM_MemWrite;
    unsigned char Ctrl_MEM_MemRead;

    unsigned char Ctrl_WB_RegWrite;
};


struct IDEX
{
    unsigned int RegDst;
    REG InstPC;
    REG NextPC;
    REG VRs1,VRs2;
    long long Imm;

    unsigned char Ctrl_EX_BranchCmp;
    unsigned char Ctrl_EX_ALUSrc;
    unsigned char Ctrl_EX_ALUOp;
    unsigned char Ctrl_EX_Branch;

    unsigned char Ctrl_MEM_MemWrite;
    unsigned char Ctrl_MEM_MemRead;

    unsigned char Ctrl_WB_RegWrite;
};

struct EXMEM
{
    unsigned int RegDst;
    REG NextPC;
    REG ALU_out;
    REG VRs2;

    unsigned char Ctrl_MEM_MemWrite;
    unsigned char Ctrl_MEM_MemRead;

    unsigned char Ctrl_WB_RegWrite;
};

struct MEMWB
{
    unsigned int RegDst;
    REG NextPC;
    REG Mem_read;
    REG ALU_out;

    unsigned char Ctrl_WB_RegWrite;
};

#define STAGE_IF 0
#define STAGE_ID 1
#define STAGE_EX 2
#define STAGE_MEM 3
#define STAGE_WB 4

#define MODE_LOAD 0
#define MODE_STALL 1
#define MODE_BUBBLE 2

#define INSTSIZE_16 0
#define INSTSIZE_32 1

#define EXTOP_SIGNED 0
#define EXTOP_UNSIGED 1

#define BRANCHCMP_NOP 0
#define BRANCHCMP_EQ 1
#define BRANCHCMP_NE 2
#define BRANCHCMP_LT 3
#define BRANCHCMP_GE 4
#define BRANCHCMP_LTU 5
#define BRANCHCMP_GEU 6

#define ALUOP_NOP 0x0
#define ALUOP_ADD 0x1
#define ALUOP_SUB 0x2
#define ALUOP_MUL 0x3
#define ALUOP_MULH 0x4
#define ALUOP_MULHU 0x5
#define ALUOP_MULHSU 0x6
#define ALUOP_DIV 0x7
#define ALUOP_DIVU 0x8
#define ALUOP_REM 0x9
#define ALUOP_REMU 0xa
#define ALUOP_SLL 0xb
#define ALUOP_SRL 0xc
#define ALUOP_SRA 0xd
#define ALUOP_AND 0xe
#define ALUOP_OR 0xf
#define ALUOP_XOR 0x10
#define ALUOP_SLT 0x11
#define ALUOP_SLTU 0x12
#define ALUOP_ADDW 0x13
#define ALUOP_SUBW 0x14
#define ALUOP_MULW 0x15
#define ALUOP_DIVW 0x16
#define ALUOP_DIVUW 0x17
#define ALUOP_REMW 0x18
#define ALUOP_REMUW 0x19
#define ALUOP_SLLW 0x1a
#define ALUOP_SRLW 0x1b
#define ALUOP_SRAW 0x1c

#define ALUSRC_NONE 0
#define ALUSRC_RS1_RS2 1
#define ALUSRC_RS1_IMM 2
#define ALUSRC_PC_IMM 3

#define BRANCH_NO 0
#define BRANCH_YES 1

#define MEMREAD_NO 0
#define MEMREAD_BYTE 1
#define MEMREAD_HWORD 2
#define MEMREAD_WORD 3
#define MEMREAD_DWORD 4
#define MEMREAD_BYTEU 5
#define MEMREAD_HWORDU 6
#define MEMREAD_WORDU 7

#define MEMWRITE_NO 0
#define MEMWRITE_BYTE 1
#define MEMWRITE_HWORD 2
#define MEMWRITE_WORD 3
#define MEMWRITE_DWORD 4

#define REGWRITE_NO 0
#define REGWRITE_VALE 1
#define REGWRITE_VALP 2
#define REGWRITE_VALM 3

#define OP_ARIT_REG 0x33
#define OP_LOAD 0x3
#define OP_ARIT_IMM 0x13
#define OP_ARIT_IMM_W 0x1b
#define OP_ARIT_REG_W 0x3b
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
#define F3_SLTU 0x3
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
#define F3_BYTEU 0x4
#define F3_HWORDU 0x5
#define F3_WORDU 0x6
#define F3_JALR 0x0
#define F3_ECALL 0x0

#define F3_EQ 0x0
#define F3_NE 0x1
#define F3_LT 0x4
#define F3_GE 0x5
#define F3_LTU 0x6
#define F3_GEU 0x7

#define F7_ADD 0x0
#define F7_MUL 0x1
#define F7_SUB 0x20
#define F7_SLL 0x0
#define F7_MULH 0x1
#define F7_MULHU 0x1
#define F7_MULHSU 0x1
#define F7_SLT 0x0
#define F7_SLTU 0x0
#define F7_XOR 0x0
#define F7_DIV 0x1
#define F7_DIVU 0x1
#define F7_SRL 0x0
#define F7_SRA 0x20
#define F7_OR 0x0
#define F7_REM 0x1
#define F7_REMU 0x1
#define F7_AND 0x0
#define F7_ECALL 0x0

#define IMM6_11_SLLI 0x0
#define IMM6_11_SRLI 0x0
#define IMM6_11_SRAI 0x10

#define OPC_00 0
#define OPC_01 1
#define OPC_10 2

#define F3C_ADDI4SPN 0
#define F3C_LW 2
#define F3C_LD 3
#define F3C_SW 6
#define F3C_SD 7

#define F3C_ADDI 0
#define F3C_ADDIW 1
#define F3C_LI 2
#define F3C_LUI 3
#define F3C_ARIT 4
#define F3C_J 5
#define F3C_BEQZ 6
#define F3C_BENZ 7

#define F3C_SLLI 0
#define F3C_LWSP 2
#define F3C_LDSP 3
#define F3C_JR 4
#define F3C_SWSP 6
#define F3C_SDSP 7

#define F2C_1_SRLI 0
#define F2C_1_SRAI 1
#define F2C_1_ANDI 2
#define F2C_1_REG 3

#define F2C_2_SUB 0
#define F2C_2_XOR 1
#define F2C_2_OR 2
#define F2C_2_AND 3
#define F2C_2_SUBW 0
#define F2C_2_ADDW 1

#define F1C_D 0
#define F1C_W 1

#define F1C_JRMV 0
#define F1C_JALRADD 1

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