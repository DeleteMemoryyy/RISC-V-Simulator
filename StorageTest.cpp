#include "Storage.h"
#include <stdlib.h>

char traceFile[50];
char dummy[100];

void TestL1(int argc, char **argv)
{
    int e_size = atoi(argv[1]), e_block_size = atoi(argv[2]), associativity = atoi(argv[3]),
        hit_latency = atoi(argv[4]);
    HIT_WRITTING_POLICY hit_p = (HIT_WRITTING_POLICY)atoi(argv[5]);
    MISS_WRITTING_POLICH miss_p = (MISS_WRITTING_POLICH)atoi(argv[6]);
    int e_set_num = e_size - e_block_size - (int)log2(associativity);
    Cache *l1 = new Cache(e_set_num, associativity, e_block_size, hit_p, miss_p, hit_latency, 0);
    Memory *cached_memory = new Memory(100, 0);
    l1->SetNextLevel(cached_memory);

    FILE *trace = fopen(traceFile, "r");
    if (trace == NULL)
        {
            printf("Open trace file false!\n");
            return;
        }
    char op;
    TYPEADDR paddr;
    int traceCount = 0;
    while (fscanf(trace, "%c %d ", &op, &paddr) != -1)
        {
            // printf("trace_count: %d\t op:%c\t addr:0x%x\n", traceCount, op, paddr);
            traceCount++;
            int t_time = 0;
            switch (op)
                {
                    case 'r':
                        {
                            l1->Handler(paddr, 1, dummy, STORAGEOP_READ, t_time);
                        }
                        break;
                    case 'w':
                        {
                            l1->Handler(paddr, 1, dummy, STORAGEOP_WRITE, t_time);
                        }
                        break;
                }
        }
    fclose(trace);
    printf("Simulation finished!\t trace_count: %d\n", traceCount);
    l1->Print();
    cached_memory->Print();
    delete cached_memory;
    delete l1;
}

void TestL1All()
{
    FILE *resultFile = fopen("result_s_b.csv", "w");
    if (resultFile == NULL)
        {
            printf("Write result file fault\n");
            return;
        }
    fprintf(resultFile,"e_size,associativity,e_block_size,hit_w_policy,miss_w_polich,miss_rate\n");
    int e_size = 0, e_block_size = 0, associativity = 8, hit_latency = 2;
    HIT_WRITTING_POLICY hit_p = WRITE_BACK;
    MISS_WRITTING_POLICH miss_p = WRITE_ALLOCATE;
    int e_set_num = 0;
    for (e_size = 15; e_size <= 25; ++e_size)
        for (e_block_size = 4; e_block_size <= 9; ++e_block_size)
            {
                e_set_num = e_size - e_block_size - (int)log2(associativity);
                Cache *l1 = new Cache(e_set_num, associativity, e_block_size, hit_p, miss_p,
                                      hit_latency, 0);
                Memory *cached_memory = new Memory(100, 0);
                l1->SetNextLevel(cached_memory);

                FILE *trace = fopen(traceFile, "r");
                if (trace == NULL)
                    {
                        printf("Open trace file false!\n");
                        return;
                    }
                char op;
                TYPEADDR paddr;
                int traceCount = 0;
                while (fscanf(trace, "%c %d ", &op, &paddr) != -1)
                    {
                        int t_time = 0;
                        switch (op)
                            {
                                case 'r':
                                    {
                                        l1->Handler(paddr, 1, dummy, STORAGEOP_READ, t_time);
                                    }
                                    break;
                                case 'w':
                                    {
                                        l1->Handler(paddr, 1, dummy, STORAGEOP_WRITE, t_time);
                                    }
                                    break;
                            }
                    }
                fclose(trace);
                printf("Simulation finished!\t trace_count: %d\n", traceCount);
                l1->Print();
                cached_memory->Print();
                printf("\n");
                fprintf(resultFile, "%d, %d, %d, %d, %d, %f,\n", e_size, associativity,
                        e_block_size, hit_p, miss_p, l1->GetMissRate());
                delete cached_memory;
                delete l1;
            }
    fclose(resultFile);

    resultFile = fopen("result_s_a.csv", "w");
    if (resultFile == NULL)
        {
            printf("Write result file fault\n");
            return;
        }
    fprintf(resultFile,"e_size,associativity,e_block_size,hit_w_policy,miss_w_polich,miss_rate\n");
    e_block_size = 6;
    for (e_size = 15; e_size <= 25; ++e_size)
        for (associativity = 1; associativity <= 32; ++associativity)
            {
                e_set_num = e_size - e_block_size - (int)log2(associativity);
                Cache *l1 = new Cache(e_set_num, associativity, e_block_size, hit_p, miss_p,
                                      hit_latency, 0);
                Memory *cached_memory = new Memory(100, 0);
                l1->SetNextLevel(cached_memory);
                l1->Print();

                FILE *trace = fopen(traceFile, "r");
                if (trace == NULL)
                    {
                        printf("Open trace file false!\n");
                        return;
                    }
                char op;
                TYPEADDR paddr;
                int traceCount = 0;
                while (fscanf(trace, "%c %d ", &op, &paddr) != -1)
                    {
                        int t_time = 0;
                        switch (op)
                            {
                                case 'r':
                                    {
                                        l1->Handler(paddr, 1, dummy, STORAGEOP_READ, t_time);
                                    }
                                    break;
                                case 'w':
                                    {
                                        l1->Handler(paddr, 1, dummy, STORAGEOP_WRITE, t_time);
                                    }
                                    break;
                            }
                    }
                fclose(trace);
                printf("Simulation finished!\t trace_count: %d\n", traceCount);
                l1->Print();
                cached_memory->Print();
                printf("\n");
                fprintf(resultFile, "%d, %d, %d, %d, %d, %f,\n", e_size, associativity,
                        e_block_size, hit_p, miss_p, l1->GetMissRate());
                delete cached_memory;
                delete l1;
            }
    fclose(resultFile);
}

int main(int argc, char **argv)
{
    int argCount;
    for (argc--, argv++; argc > 0; argc -= argCount, argv += argCount)
        {
            argCount = 1;
            if (!strcmp(*argv, "-t"))
                {
                    assert(argc >= 2);
                    sprintf(traceFile, "%s", *(argv + 1));
                    argCount = 2;
                }
            if (!strcmp(*argv, "-a"))
                {
                    TestL1All();
                    break;
                }
            if (!strcmp(*argv, "-L1"))
                {
                    assert(argc >= 7);
                    TestL1(argc, argv);
                    argCount = 7;
                }
            if (!strcmp(*argv, "-L2"))
                {
                    assert(argc >= 13);
                    // TestL2(argc, argv);
                    argCount = 13;
                }
            if (!strcmp(*argv, "-L3"))
                {
                    assert(argc >= 19);
                    // TestL2(argc, argv);
                    argCount = 19;
                }
        }
    return 0;
}