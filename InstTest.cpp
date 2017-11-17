#include "Simulate.h"

static int init()
{
    for (int i = 0; i < 32; ++i)
        reg[i] = 0;

    StageMode[STAGE_IF] = MODE_LOAD;
    StageMode[STAGE_ID] = MODE_BUBBLE;
    StageMode[STAGE_EX] = MODE_BUBBLE;
    StageMode[STAGE_MEM] = MODE_BUBBLE;
    StageMode[STAGE_WB] = MODE_BUBBLE;

    BranchFlag = BRANCH_NO;
    ALUWait = 0;
    ALUWaitFinished = false;

    PC = 0x10100;

    for (int i = 0; i < 1000; ++i)
        WRITE_WORD(PC + 4 * i, 0x00000013);

    reg[R_gp] = 0x20000;
    reg[R_sp] = P_TO_V(MEM_ED);
}

void testAll()
{
    int cycle = 0;

    // RV32I U
    // LUI
    init();
    WRITE_WORD(PC, 0x00064537);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: lui  a0, %lld\n", (100 << 12));
    printf("Exp Res: %lld\n", (100 << 12));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10104);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // AUIPC
    init();
    WRITE_WORD(PC, 0x00064517);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: auipc  a0, %lld\n", (100 << 12));
    printf("Exp Res: %lld\n", 0x10100 + (100 << 12));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10104);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I J
    // JAL
    init();
    WRITE_WORD(PC, 0x0280056f);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: jal  a0, 0x%llx\n", 0x10100 + 40);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // JALR
    init();
    WRITE_WORD(PC, 0x02858567);
    reg[R_a1] = 0x10500;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: jalr  a0, a1, %lld\n", 40);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 8 + 0x10500 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // JALR
    init();
    WRITE_WORD(PC, 0x02858567);
    reg[R_a1] = 0x10500;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: jalr  a0, a1, %lld\n", 40);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 8 + 0x10500 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I SB
    // BEQ
    init();
    WRITE_WORD(PC, 0x02b50263);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: beq  a0, a1, 0x%llx\n", 0x10100 + 36);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x02b50263);
    reg[R_a0] = 0;
    reg[R_a1] = 0;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 36);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BNE
    init();
    WRITE_WORD(PC, 0x02b51063);
    reg[R_a0] = 0;
    reg[R_a1] = 0;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: bne  a0, a1, 0x%llx\n", 0x10100 + 32);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x02b51063);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 32);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BLT
    init();
    WRITE_WORD(PC, 0x00b54e63);
    reg[R_a0] = 1;
    reg[R_a1] = 0;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: blt  a0, a1, 0x%llx\n", 0x10100 + 28);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b54e63);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 28);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BGE
    init();
    WRITE_WORD(PC, 0x00b55c63);
    reg[R_a0] = 0;
    reg[R_a1] = 1;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: bge  a0, a1, 0x%llx\n", 0x10100 + 24);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b55c63);
    reg[R_a0] = 1;
    reg[R_a1] = 0;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 24);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BLTU
    init();
    WRITE_WORD(PC, 0x00b56a63);
    reg[R_a0] = (ULL)(-1);
    reg[R_a1] = 0;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: bltu  a0, a1, 0x%llx\n", 0x10100 + 20);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b56a63);
    reg[R_a0] = 0;
    reg[R_a1] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 20);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // BGEU
    init();
    WRITE_WORD(PC, 0x00b57863);
    reg[R_a0] = 0;
    reg[R_a1] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: bgeu  a0, a1, 0x%llx\n", 0x10100 + 16);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00b57863);
    reg[R_a0] = (ULL)(-1);
    reg[R_a1] = 0;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp PC: 0x%llx\n", 8 + 0x10100 + 16);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I S
    // SB
    init();
    WRITE_WORD(PC, 0x02b50423);
    reg[R_a0] = 0x20000;
    reg[R_a1] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sb  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", 0xff);
    printf("Exe Res: %d\n", READ_BYTE(0x20000 + 40));
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SH
    init();
    WRITE_WORD(PC, 0x02b51423);
    reg[R_a0] = 0x20000;
    reg[R_a1] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sh  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", 0xffff);
    printf("Exe Res: %d\n", READ_HWORD(0x20000 + 40));
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SW
    init();
    WRITE_WORD(PC, 0x02b52423);
    reg[R_a0] = 0x20000;
    reg[R_a1] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sw  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", 0xffffffff);
    printf("Exe Res: %d\n", READ_WORD(0x20000 + 40));
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I I
    // LB
    init();
    WRITE_WORD(PC, 0x02850583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: lb  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", -1);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LH
    init();
    WRITE_WORD(PC, 0x02851583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: lh  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", -1);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LW
    init();
    WRITE_WORD(PC, 0x02852583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: lw  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", -1);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LBU
    init();
    WRITE_WORD(PC, 0x02854583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: lbu  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", 0xff);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // LHU
    init();
    WRITE_WORD(PC, 0x02855583);
    reg[R_a0] = 0x30000;
    WRITE_DWORD(0x30000 + 40, (ULL)(-1));
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: lhu  a1, %lld(a0)\n", 40);
    printf("Exp Res: %d\n", 0xffff);
    printf("Exe Res: %d\n", reg[R_a1]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // ADDI
    init();
    WRITE_WORD(PC, 0x02858513);
    reg[R_a1] = 0xffff;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: addi  a0, a1, %lld\n", 40);
    printf("Exp Res: %lld\n", 0xffff + 40);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLTI
    init();
    WRITE_WORD(PC, 0x0285a513);
    reg[R_a1] = 0xffff;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: slti  a0, a1, %lld\n", 40);
    printf("Exp Res: %d\n", 0);
    printf("Exe Res: %d\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x0285a513);
    reg[R_a1] = 1;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %d\n", 1);
    printf("Exe Res: %d\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLTIU
    init();
    WRITE_WORD(PC, 0x0285b513);
    reg[R_a1] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sltiu  a0, a1, %lld\n", 40);
    printf("Exp Res: %d\n", 0);
    printf("Exe Res: %d\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x0285b513);
    reg[R_a1] = 1;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %d\n", 1);
    printf("Exe Res: %d\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // XORI
    init();
    WRITE_WORD(PC, 0x0775c513);
    reg[R_a1] = 0xf;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: xori  a0, a1, %lld\n", 0x77);
    printf("Exp Res: %lld\n", 0xf ^ 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // ORI
    init();
    WRITE_WORD(PC, 0x0775e513);
    reg[R_a1] = 0xf;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: ori  a0, a1, %lld\n", 0x77);
    printf("Exp Res: %lld\n", 0xf | 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // ANDI
    init();
    WRITE_WORD(PC, 0x0775f513);
    reg[R_a1] = 0xf;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: andi  a0, a1, %lld\n", 0x77);
    printf("Exp Res: %lld\n", 0xf & 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV32I R
    // ADD
    init();
    WRITE_WORD(PC, 0x00c58533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: add  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 0xf + 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SUB
    init();
    WRITE_WORD(PC, 0x40c58533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sub  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (long long)(0xf - 0x77));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLL
    init();
    WRITE_WORD(PC, 0x00c59533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0x7;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sll  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (0x77 << 0x7));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLT
    init();
    WRITE_WORD(PC, 0x00c5a533);
    reg[R_a1] = 0xf;
    reg[R_a2] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: slt  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x00c5a533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", 1);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SLTU
    init();
    WRITE_WORD(PC, 0x00c5b533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sltu  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x00c5b533);
    reg[R_a1] = 0xf;
    reg[R_a2] = (ULL)(-1);
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", 1);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // XOR
    init();
    WRITE_WORD(PC, 0x00c5c533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: xor  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 0xf ^ 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SRL
    init();
    WRITE_WORD(PC, 0x00c5d533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x7;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: srl  a0, a1, a2\n");
    printf("Exp Res: %lld\n", ((ULL)(-1) >> 0x7));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // SRA
    init();
    WRITE_WORD(PC, 0x40c5d533);
    reg[R_a1] = (ULL)(-1);
    reg[R_a2] = 0x7;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: sra  a0, a1, a2\n");
    printf("Exp Res: %lld\n", ((long long)(-1) >> 0x7));
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // OR
    init();
    WRITE_WORD(PC, 0x00c5e533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: or  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 0xf | 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // AND
    init();
    WRITE_WORD(PC, 0x00c5f533);
    reg[R_a1] = 0xf;
    reg[R_a2] = 0x77;
    cycle = 5;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: and  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 0xf & 0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
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
    cycle = 6;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: mul  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (long long)0xf * (long long)0x77);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c58533);
    reg[R_a1] = -2;
    reg[R_a2] = -10;
    cycle = 6;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (long long)(-2) * (long long)(-10));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c58533);
    reg[R_a1] = -10;
    reg[R_a2] = 20;
    cycle = 6;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (long long)(-10) * (long long)20);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 20 + 0x10100 + 4);
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
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: div  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (long long)0x77 / (long long)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5c533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (long long)(-5245) / (long long)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5c533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (long long)(-180) / (long long)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // DIVU
    init();
    WRITE_WORD(PC, 0x02c5d533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: divu  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (ULL)0x77 / (ULL)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5d533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (ULL)(-5245) / (ULL)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5d533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (ULL)(-180) / (ULL)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // REM
    init();
    WRITE_WORD(PC, 0x02c5e533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: rem  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (long long)0x77 % (long long)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5e533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (long long)(-5245) % (long long)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5e533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (long long)(-180) % (long long)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // REMU
    init();
    WRITE_WORD(PC, 0x02c5f533);
    reg[R_a1] = 0x77;
    reg[R_a2] = 0xf;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: remu  a0, a1, a2\n");
    printf("Exp Res: %lld\n", (ULL)0x77 % (ULL)0xf);
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5f533);
    reg[R_a1] = -5245;
    reg[R_a2] = -9;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (ULL)(-5245) % (ULL)(-9));
    printf("Exe Res: %lld\n", reg[R_a0]);
    init();
    WRITE_WORD(PC, 0x02c5f533);
    reg[R_a1] = -180;
    reg[R_a2] = 7;
    cycle = 44;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Exp Res: %lld\n", (ULL)(-180) % (ULL)7);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 4);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // RV64M R
    // MULW

    // DIVW

    // DIVUW

    // REMW

    // REMUW

    // pipeline
    // data hazard
    init();
    WRITE_WORD(PC, 0x00558593);      // addi  a1, a1, 5
    WRITE_WORD(PC + 4, 0x00a60613);  // addi  a2, a2, 10
    WRITE_WORD(PC + 8, 0x00c58533);  // add  a0, a1, a2
    cycle = 15;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: addi  a1, a1, 5\n");
    printf("Ori: addi  a2, a2, 10\n");
    printf("Ori: add  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 15);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 12);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00558593);       // addi  a1, a1, 5
    WRITE_WORD(PC + 4, 0x00a60613);   // addi  a2, a2, 10
    WRITE_WORD(PC + 8, 0x00000013);   // addi  zero, zero, 0
    WRITE_WORD(PC + 12, 0x00c58533);  // add  a0, a1, a2
    cycle = 15;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: addi  a1, a1, 5\n");
    printf("Ori: addi  a2, a2, 10\n");
    printf("Ori: addi  zero, zero, 0\n");
    printf("Ori: add  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 15);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 16);
    printf("Exe PC: 0x%llx\n", PC);
    init();
    WRITE_WORD(PC, 0x00558593);       // addi  a1, a1, 5
    WRITE_WORD(PC + 4, 0x00a60613);   // addi  a2, a2, 10
    WRITE_WORD(PC + 8, 0x00000013);   // addi  zero, zero, 0
    WRITE_WORD(PC + 12, 0x00000013);  // addi  zero, zero, 0
    WRITE_WORD(PC + 16, 0x00c58533);  // add  a0, a1, a2
    cycle = 15;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: addi  a1, a1, 5\n");
    printf("Ori: addi  a2, a2, 10\n");
    printf("Ori: addi  zero, zero, 0\n");
    printf("Ori: addi  zero, zero, 0\n");
    printf("Ori: add  a0, a1, a2\n");
    printf("Exp Res: %lld\n", 15);
    printf("Exe Res: %lld\n", reg[R_a0]);
    printf("Exp PC: 0x%llx\n", 16 + 0x10100 + 20);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // load/use Hazard

    // address misprediction
    init();
    WRITE_WORD(PC, 0x02858567);            // jalr  a0, a1, 40
    WRITE_WORD(PC + 4, 0x00558593);        // addi  a1, a1, 5
    WRITE_WORD(PC + 8, 0x00a60613);        // addi  a2, a2, 10
    WRITE_WORD(PC + 12, 0x00f68693);       // addi  a3, a3, 15
    WRITE_WORD(0x10500 + 40, 0x00670713);  // addi  a4, a4, 6
    WRITE_WORD(0x10500 + 44, 0x00c78793);  // addi  a5, a5, 12
    WRITE_WORD(0x10500 + 48, 0x01280813);  // addi  a6, a6, 18
    reg[R_a1] = 0x10500;
    cycle = 10;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: jalr  a0, a1, %lld\n", 40);
    printf("Ori: addi  a4, a4, %lld\n", 6);
    printf("Ori: addi  a5, a5, %lld\n", 12);
    printf("Ori: addi  a6, a6, %lld\n", 18);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp Res: %lld\n", 0x10500);
    printf("Exe Res: %lld\n", reg[R_a1]);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a2]);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a3]);
    printf("Exp Res: %lld\n", 6);
    printf("Exe Res: %lld\n", reg[R_a4]);
    printf("Exp Res: %lld\n", 12);
    printf("Exe Res: %lld\n", reg[R_a5]);
    printf("Exp Res: %lld\n", 18);
    printf("Exe Res: %lld\n", reg[R_a6]);
    printf("Exp PC: 0x%llx\n", 28 + 0x10500 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    init();
    WRITE_WORD(PC, 0x1f40056f);            // jal  a0, 500
    WRITE_WORD(PC + 4, 0x00558593);        // addi  a1, a1, 5
    WRITE_WORD(PC + 8, 0x00a60613);        // addi  a2, a2, 10
    WRITE_WORD(PC + 12, 0x00f68693);       // addi  a3, a3, 15
    WRITE_WORD(PC + 500, 0x00670713);      // addi  a4, a4, 6
    WRITE_WORD(PC + 500 + 4, 0x00c78793);  // addi  a5, a5, 12
    WRITE_WORD(PC + 500 + 8, 0x01280813);  // addi  a6, a6, 18
    cycle = 10;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: jal  a0, 0x%llx\n", 0x10100 + 500);
    printf("Ori: addi  a4, a4, %lld\n", 6);
    printf("Ori: addi  a5, a5, %lld\n", 12);
    printf("Ori: addi  a6, a6, %lld\n", 18);
    printf("Exp Res: 0x%llx\n", 0x10100 + 4);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a1]);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a2]);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a3]);
    printf("Exp Res: %lld\n", 6);
    printf("Exe Res: %lld\n", reg[R_a4]);
    printf("Exp Res: %lld\n", 12);
    printf("Exe Res: %lld\n", reg[R_a5]);
    printf("Exp Res: %lld\n", 18);
    printf("Exe Res: %lld\n", reg[R_a6]);
    printf("Exp PC: 0x%llx\n", 28 + 0x10100 + 500);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");

    // data hazard & address missprediction
    init();
    WRITE_WORD(PC, 0x00558593);            // addi  a1, a1, 5
    WRITE_WORD(PC + 4, 0x00008567);        // jalr  a0, ra, 0
    WRITE_WORD(PC + 8, 0x00758593);        // addi  a1, a1, 7
    WRITE_WORD(PC + 12, 0x00a60613);       // addi  a2, a2, 10
    WRITE_WORD(0x10500, 0x00458593);       // addi  a1, a1, 4
    WRITE_WORD(0x10500 + 4, 0x00670713);   // addi  a4, a4, 6
    WRITE_WORD(0x10500 + 8, 0x00c78793);   // addi  a5, a5, 12
    WRITE_WORD(0x10500 + 12, 0x01280813);  // addi  a6, a6, 18
    reg[R_ra] = 0x10500;
    cycle = 20;
    while (cycle--)
        {
            simulate_one_step();
            if (cycle > 3)
                printf("Idf: %s\n", InstBuf);
        }
    printf("Ori: addi  a1, a1, %lld\n", 5);
    printf("Ori: jalr  a0, ra, %lld\n", 0);
    printf("Ori: addi  a1, a1, %lld\n", 4);
    printf("Ori: addi  a4, a4, %lld\n", 6);
    printf("Ori: addi  a5, a5, %lld\n", 12);
    printf("Ori: addi  a6, a6, %lld\n", 18);
    printf("Exp Res: 0x%llx\n", 0x10100 + 8);
    printf("Exe Res: 0x%llx\n", reg[R_a0]);
    printf("Exp Res: %lld\n", 9);
    printf("Exe Res: %lld\n", reg[R_a1]);
    printf("Exp Res: %lld\n", 0);
    printf("Exe Res: %lld\n", reg[R_a2]);
    printf("Exp Res: %lld\n", 6);
    printf("Exe Res: %lld\n", reg[R_a4]);
    printf("Exp Res: %lld\n", 12);
    printf("Exe Res: %lld\n", reg[R_a5]);
    printf("Exp Res: %lld\n", 18);
    printf("Exe Res: %lld\n", reg[R_a6]);
    printf("Exp PC: 0x%llx\n", 32 + 0x10500 + 40);
    printf("Exe PC: 0x%llx\n", PC);
    printf("\n");
}

int main()
{
    testAll();
    int cycle = 0;
}