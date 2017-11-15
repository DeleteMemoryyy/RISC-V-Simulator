#include "Simulate.h"

static int init()
{
    for (int i = 0; i < 32; ++i)
        reg[i] = 0;

    WB_IF.PC = 0x10100;
    WB_IF.Ctrl_IF_Branch = BRANCH_NO;

    reg[R_gp] = 0x12000;
    reg[R_sp] = P_TO_V(MEM_ED);
}

int main()
{
    // RV32I U
    // LUI
    init();
    WRITE_WORD(PC, 0x00064537);
    simulate_one_step();
    printf("Ori: lui  a0, %lld\n", (100 << 12));
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (100 << 12));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10104);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // AUIPC
    init();
    WRITE_WORD(PC, 0x00064517);
    simulate_one_step();
    printf("Ori: auipc  a0, %lld\n", (100 << 12));
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0x10100 + (100 << 12));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10104);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I J
    // JAL
    init();
    WRITE_WORD(PC, 0x0280056f);
    simulate_one_step();
    printf("Ori: jal  a0, 0x%llx\n", 0x10100 + 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // JALR
    init();
    WRITE_WORD(PC, 0x02858567);
    reg[R_a1] = 0x10500;
    simulate_one_step();
    printf("Ori: jalr  a0, a1, %lld\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10500 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // JALR
    init();
    WRITE_WORD(PC, 0x02858567);
    reg[R_a1] = 0x10500;
    simulate_one_step();
    printf("Ori: jalr  a0, a1, %lld\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10500 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I SB
    // BEQ
    init();
    WRITE_WORD(PC, 0x02b50263);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    simulate_one_step();
    printf("Ori: beq  a0, a1, 0x%llx\n", 0x10100 + 36);
    printf("Idf: %s\n", InstBuf);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x02b50263);
    reg[R_a0] = 0;
    reg[R_a1] = 0;
    simulate_one_step();
    printf("Exp PC: 0x%llx\n", 0x10100 + 36);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BNE
    init();
    WRITE_WORD(PC, 0x02b51063);
    reg[R_a0] = 0;
    reg[R_a1] = 0;
    simulate_one_step();
    printf("Ori: bne  a0, a1, 0x%llx\n", 0x10100 + 32);
    printf("Idf: %s\n", InstBuf);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x02b51063);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    simulate_one_step();
    printf("Exp PC: 0x%llx\n", 0x10100 + 32);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BLT
    init();
    WRITE_WORD(PC, 0x00b54e63);
    reg[R_a0] = 1;
    reg[R_a1] = 0;
    simulate_one_step();
    printf("Ori: blt  a0, a1, 0x%llx\n", 0x10100 + 28);
    printf("Idf: %s\n", InstBuf);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b54e63);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    simulate_one_step();
    printf("Exp PC: 0x%llx\n", 0x10100 + 28);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BGE
    init();
    WRITE_WORD(PC, 0x00b55c63);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    simulate_one_step();
    printf("Ori: bge  a0, a1, 0x%llx\n", 0x10100 + 24);
    printf("Idf: %s\n", InstBuf);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b55c63);
    reg[R_a0] = 1;
    reg[R_a1] = 0;
    simulate_one_step();
    printf("Exp PC: 0x%llx\n", 0x10100 + 24);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BLTU
    init();
    WRITE_WORD(PC, 0x00b56a63);
    reg[R_a0] = (ULL)(-1);
    reg[R_a1] = 0;
    simulate_one_step();
    printf("Ori: bltu  a0, a1, 0x%llx\n", 0x10100 + 20);
    printf("Idf: %s\n", InstBuf);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b56a63);
    reg[R_a0] = 0;
    reg[R_a1] = (ULL)(-1);
    simulate_one_step();
    printf("Exp PC: 0x%llx\n", 0x10100 + 20);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BGEU
    init();
    WRITE_WORD(PC, 0x00b57863);
    reg[R_a0] = 0;
    reg[R_a1] = (ULL)(-1);
    simulate_one_step();
    printf("Ori: bgeu  a0, a1, 0x%llx\n", 0x10100 + 16);
    printf("Idf: %s\n", InstBuf);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b57863);
    reg[R_a0] = (ULL)(-1);
    reg[R_a1] = 0;
    simulate_one_step();
    printf("Exp PC: 0x%llx\n", 0x10100 + 16);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I S
    // SB
    init();
    WRITE_WORD(PC, 0x02b50423);
    reg[R_a0] = 0x20000;
    reg[R_a1] = (ULL)(-1);
    simulate_one_step();
    printf("Ori: sb  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0xff);
    printf("Exe Res: %d\n", READ_BYTE(0x20000 + 40));
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SH
    init();
    WRITE_WORD(PC, 0x02b51423);
    reg[R_a0] = 0x20000;
    reg[R_a1] = (ULL)(-1);
    simulate_one_step();
    printf("Ori: sh  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0xffff);
    printf("Exe Res: %d\n", READ_HWORD(0x20000 + 40));
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SW
    init();
    WRITE_WORD(PC, 0x02b52423);
    reg[R_a0] = 0x20000;
    reg[R_a1] = (ULL)(-1);
    simulate_one_step();
    printf("Ori: sw  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0xffffffff);
    printf("Exe Res: %d\n", READ_WORD(0x20000 + 40));
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I I
    // LB
    init();
    WRITE_WORD(PC, 0x02850583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    simulate_one_step();
    printf("Ori: lb  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", -1);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LH
    init();
    WRITE_WORD(PC, 0x02851583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    simulate_one_step();
    printf("Ori: lh  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", -1);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LW
    init();
    WRITE_WORD(PC, 0x02852583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    simulate_one_step();
    printf("Ori: lw  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", -1);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LBU
    init();
    WRITE_WORD(PC, 0x02854583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    simulate_one_step();
    printf("Ori: lbu  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0xff);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LHU
    init();
    WRITE_WORD(PC, 0x02855583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    simulate_one_step();
    printf("Ori: lhu  a1, %lld(a0)\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0xffff);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // ADDI
    init();
    WRITE_WORD(PC, 0x02858513);
    reg[R_a1] = 0xffff;
    simulate_one_step();
    printf("Ori: addi  a0, a1, %lld\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xffff + 40);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLTI
    init();
    WRITE_WORD(PC, 0x0285a513);
    reg[R_a1] = 0xffff;
    simulate_one_step();
    printf("Ori: slti  a0, a1, %lld\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0);
    printf("Exe Res: %d\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x0285a513);
    reg[R_a1] = 1;
    simulate_one_step();
    printf("Exp Res: %d\n", 1);
    printf("Exe Res: %d\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLTIU
    init();
    WRITE_WORD(PC, 0x0285b513);
    reg[R_a1] = (ULL)(-1);
    simulate_one_step();
    printf("Ori: sltiu  a0, a1, %lld\n", 40);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %d\n", 0);
    printf("Exe Res: %d\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x0285b513);
    reg[R_a1] = 1;
    simulate_one_step();
    printf("Exp Res: %d\n", 1);
    printf("Exe Res: %d\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // XORI
    init();
    WRITE_WORD(PC, 0x0775c513);
    reg[R_a1] = 0xf;
    simulate_one_step();
    printf("Ori: xori  a0, a1, %lld\n", 0x77);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf ^ 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // ORI
    init();
    WRITE_WORD(PC, 0x0775e513);
    reg[R_a1] = 0xf;
    simulate_one_step();
    printf("Ori: ori  a0, a1, %lld\n", 0x77);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf | 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // ANDI
    init();
    WRITE_WORD(PC, 0x0775f513);
    reg[R_a1] = 0xf;
    simulate_one_step();
    printf("Ori: andi  a0, a1, %lld\n", 0x77);
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf & 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I R
    // ADD
    init();
    WRITE_WORD(PC, 0x00c58533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: add  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf + 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SUB
    init();
    WRITE_WORD(PC, 0x40c58533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: sub  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (long long)(0xf - 0x77));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLL
    init();
    WRITE_WORD(PC, 0x00c59533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0x7;
    simulate_one_step();
    printf("Ori: sll  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (0x77 << 0x7));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLT
    init();
    WRITE_WORD(PC, 0x00c5a533);
    reg[R_a1] = 0xf;
    reg[R_a2] = (ULL)(-1);
    simulate_one_step();
    printf("Ori: slt  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x00c5a533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Exp Res: %lld\n", 1);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLTU
    init();
    WRITE_WORD(PC, 0x00c5b533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: sltu  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x00c5b533);
    reg[R_a1] = 0xf;
    reg[R_a2] = (ULL)(-1);
    simulate_one_step();
    printf("Exp Res: %lld\n", 1);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // XOR
    init();
    WRITE_WORD(PC, 0x00c5c533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: xor  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf ^ 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SRL
    init();
    WRITE_WORD(PC, 0x00c5d533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x7;
    simulate_one_step();
    printf("Ori: srl  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", ((ULL)(-1) >> 0x7));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SRA
    init();
    WRITE_WORD(PC, 0x40c5d533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x7;
    simulate_one_step();
    printf("Ori: sra  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", ((long long)(-1) >> 0x7));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // OR
    init();
    WRITE_WORD(PC, 0x00c5e533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: or  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf | 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // AND
    init();
    WRITE_WORD(PC, 0x00c5f533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: and  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", 0xf & 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV64I S
    // SD

    // RV64I I
    // LWU

    // LD

    // SLLI

    // SRLI

    // SRAI

    // ADDIW

    // SLLIW

    // SRLIW

    // SRAIW

    // ADDW

    // SUBW

    // SLLW

    // SRLW

    // SRAW

    // RV32M R
    // MUL
    init();
    WRITE_WORD(PC, 0x02c58533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    simulate_one_step();
    printf("Ori: mul  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (long long)0xf * (long long)0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c58533);
    reg[R_a1] = -2;
    reg[R_a2] = -10;
    simulate_one_step();
    printf("Exp Res: %lld\n", (long long)(-2) * (long long)(-10));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c58533);
    reg[R_a1] = -10;
    reg[R_a2] = 20;
    simulate_one_step();
    printf("Exp Res: %lld\n", (long long)(-10) * (long long)20);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // MULH

    // MULHSU

    // MULHU

    // DIV
    init();
    WRITE_WORD(PC, 0x02c5c533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    simulate_one_step();
    printf("Ori: div  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (long long)0x77 / (long long)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5c533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    simulate_one_step();
    printf("Exp Res: %lld\n", (long long)(-5245) / (long long)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5c533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    simulate_one_step();
    printf("Exp Res: %lld\n", (long long)(-180) / (long long)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // DIVU
    init();
    WRITE_WORD(PC, 0x02c5d533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    simulate_one_step();
    printf("Ori: divu  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (ULL)0x77 / (ULL)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5d533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    simulate_one_step();
    printf("Exp Res: %lld\n", (ULL)(-5245) / (ULL)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5d533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    simulate_one_step();
    printf("Exp Res: %lld\n", (ULL)(-180) / (ULL)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // REM
    init();
    WRITE_WORD(PC, 0x02c5e533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    simulate_one_step();
    printf("Ori: rem  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (long long)0x77 % (long long)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5e533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    simulate_one_step();
    printf("Exp Res: %lld\n", (long long)(-5245) % (long long)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5e533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    simulate_one_step();
    printf("Exp Res: %lld\n", (long long)(-180) % (long long)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // REMU
    init();
    WRITE_WORD(PC, 0x02c5f533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    simulate_one_step();
    printf("Ori: remu  a0, a1, a2\n");
    printf("Idf: %s\n", InstBuf);
    printf("Exp Res: %lld\n", (ULL)0x77 % (ULL)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5f533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    simulate_one_step();
    printf("Exp Res: %lld\n", (ULL)(-5245) % (ULL)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5f533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    simulate_one_step();
    printf("Exp Res: %lld\n", (ULL)(-180) % (ULL)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV64M R
    // MULW

    // DIVW

    // DIVUW

    // REMW

    // REMUW
}