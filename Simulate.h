#ifndef SIMULATE_H_
#define SIMULATE_H_

#include "Read_Elf.h"
#include "Reg_Def.h"
#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <time.h>

// #define PRINT_MODE
// #define PRINT_BYPASS
#define BYPASS
// #define PREDICT
#define MEM_SIZE 1 << 24
#define MEM_ST 1 << 17
#define MEM_ED 0xfe0000

#define V_TO_P(add) ((add) + (MEM_ST) - (cVadr))
#define P_TO_V(add) ((add) + (cVadr) - (MEM_ST))
#define RVC_TO_R(r) ((r) + 8)
#define HINT(cond)                                                                                 \
    {                                                                                              \
        if ((cond))                                                                                \
            break;                                                                                 \
    }
#define GET_BITS(i, s, e) ((((unsigned int)i) << (31 - (e))) >> (31 - (e) + (s)))
#define GET_BIT(i, b) (((i) & (1 << (b))) >> (b))
#define EXT_SIGNED_WORD(src, bit) ((((int)(src)) << (32 - (bit))) >> (32 - (bit)))
#define EXT_SIGNED_DWORD(src, bit) ((((long long int)(src)) << (64 - (bit))) >> (64 - (bit)))
#define EXT_UNSIGNED_WORD(src, bit) ((((unsigned int)(src)) << (32 - (bit))) >> (32 - (bit)))
#define EXT_UNSIGNED_DWORD(src, bit) ((((ULL)(src)) << (64 - (bit))) >> (64 - (bit)))
#define READ_BYTE(vaddr) (*((unsigned char *)(memory + V_TO_P((vaddr)))))
#define READ_HWORD(vaddr) (*((unsigned short *)(memory + V_TO_P((vaddr)))))
#define READ_WORD(vaddr) (*((unsigned int *)(memory + V_TO_P((vaddr)))))
#define READ_DWORD(vaddr) (*((ULL *)(memory + V_TO_P((vaddr)))))
#define WRITE_BYTE(vaddr, value) (*((unsigned char *)(memory + V_TO_P((vaddr)))) = (value))
#define WRITE_HWORD(vaddr, value) (*((unsigned short *)(memory + V_TO_P((vaddr)))) = (value))
#define WRITE_WORD(vaddr, value) (*((unsigned int *)(memory + V_TO_P((vaddr)))) = (value))
#define WRITE_DWORD(vaddr, value) (*((ULL *)(memory + V_TO_P((vaddr)))) = (value))

const long long MASK_H = 0xffffffff00000000;
const long long MASK_L = 0xffffffff;
const long long MASK_SH = 0x3f;

const char M_NAME[3][10] = {"LOAD", "STALL", "BUBBLE"};
const char R_NAME[32][5] = {"zero", "ra", "sp", "gp", "tp",  "t0",  "t1", "t2", "s0", "s1", "a0",
                            "a1",   "a2", "a3", "a4", "a5",  "a6",  "a7", "s2", "s3", "s4", "s5",
                            "s6",   "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"};

extern unsigned char memory[MEM_SIZE];
extern REG reg[32];
extern ULL PC;
extern ULL endPC;
extern int exit_flag;
extern unsigned char BranchFlag;
extern int ALUWait;
extern bool ALUWaitFinished;
extern char InstBuf[100];
extern int InstCount;
extern int CycleCount;
extern float CPI;

extern STAGEMODE StageMode[5],StageModeOld[5];
extern IFID IF_ID,IF_ID_old;
extern IDEX ID_EX,IF_EX_old;
extern EXMEM EX_MEM,EX_MEM_old;
extern MEMWB MEM_WB,MEM_WB_old;

void load_memory();

bool simulate_one_step();

void setup();

void ERROR(int);

void IF();

void ID();

void EX();

void MEM();

void WB();

#endif