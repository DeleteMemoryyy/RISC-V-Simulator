#ifndef SIMULATION_H_
#define SIMULATION_H_

#include "Read_Elf.h"
#include "Reg_Def.h"
#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MEM_SIZE 1 << 28
#define MEM_ST 1 << 21
#define MEM_ED 0xfe00000

#define V_TO_P(add) ((add) + (MEM_ST) - (cvadr))
#define P_TO_V(add) ((add) + (cvadr) - (MEM_ST))
#define RVC_TO_R(r) ((r)+8)
#define HINT(cond)                                                                                 \
    {                                                                                              \
        if ((cond))                                                                                \
            break;                                                                                 \
    }
#define GET_BITS(i, s, e) ((((unsigned int)i) << (31 - (e))) >> (31 - (e) + (s)))
#define GET_BIT(i, b) ((i) & (1 << (b)))
#define EXT_SIGNED_WORD(src, bit) ((((int)(src)) << (31 - (bit))) >> (31 - (bit)))
#define EXT_SIGNED_DWORD(src, bit) ((((long long int)(src)) << (63 - (bit))) >> (63 - (bit)))
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

const char R_NAME[32][5] = {"zero", "ra", "sp", "gp", "tp",  "t0",  "t1",  "t2", "s0", "s1", "a0",
                            "a1",   "a2", "a3", "a4", "a5",  "a6",  "a7,", "s2", "s3", "s4", "s5",
                            "s6",   "s7", "s8", "s9", "s10", "s11", "t3",  "t4", "t5", "t6"};

//加载内存
void load_memory();

void simulate();

void ERROR();

void IF();

void ID();

void EX();

void MEM();

void WB();

void UP();

#endif