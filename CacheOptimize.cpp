#include "Storage.h"
#include <stdlib.h>

char traceFile[50];
char dummy[100];
int testTime = 5;
bool noOptimal = false;

Cache *l1 = new Cache(6, 8, 6, WRITE_BACK, WRITE_ALLOCATE, 3, 0);
Cache *l2 = new Cache(9, 8, 6, WRITE_BACK, WRITE_ALLOCATE, 4, 6);
Memory *cached_memory = new Memory(100, 0);

void sim_a_trace(char *traceName, int testTime)
{
    for (int testCount = 0; testCount < testTime; ++testCount)
        {
            FILE *trace = fopen(traceName, "r");
            if (trace == NULL)
                {
                    printf("Open trace file false!\n");
                    break;
                }

            char op;
            TYPEADDR paddr;
            int traceCount = 0;
            int t_time = 0;
            while (fscanf(trace, "%c 0x%x ", &op, &paddr) != -1)
                {
                    // printf("trace_count: %d\t op:%c\t addr:0x%x\n", traceCount, op, paddr);
                    traceCount++;
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
            printf("Simulation finished!\t trace_count: %d\t total time: %d\n", traceCount, t_time);
        }
}


int main(int argc, char **argv)
{
    int argCount;
    for (argc--, argv++; argc > 0; argc -= argCount, argv += argCount)
        {
            argCount = 1;
            if (!strcmp(*argv, "-f"))
                {
                    assert(argc >= 2);
                    sprintf(traceFile, "%s", *(argv + 1));
                    argCount = 2;
                }
            if (!strcmp(*argv, "-t"))
                {
                    assert(argc >= 2);
                    testTime = atoi(*(argv + 1));
                    argCount = 2;
                }
            if (!strcmp(*argv, "-b1"))
                {
                    assert(argc >= 2);
                    l1->EnableBypass(atoi(*(argv + 1)));
                    argCount = 2;
                }
            if (!strcmp(*argv, "-b2"))
                {
                    assert(argc >= 2);
                    l2->EnableBypass(atoi(*(argv + 1)));
                    argCount = 2;
                }
            if (!strcmp(*argv, "-p1"))
                {
                    assert(argc >= 2);
                    l1->EnablePrefetch(atoi(*(argv + 1)), 2);
                    argCount = 2;
                }
            if (!strcmp(*argv, "-p2"))
                {
                    assert(argc >= 2);
                    l2->EnablePrefetch(atoi(*(argv + 1)), 2);
                    argCount = 2;
                }
            if (!strcmp(*argv, "-OP"))
                {
                    noOptimal = true;
                }
        }

    printf("%s %d %d\n", traceFile, testTime, noOptimal);

    l1->SetNextLevel(l2);
    l2->SetNextLevel(cached_memory);
    l1->Clear();

    if (noOptimal)
        {
            l1->EnableBypass(2);
            l2->EnableBypass(2);
            l1->EnablePrefetch(8, 2);
            l2->EnablePrefetch(32, 2);
        }

    sim_a_trace(traceFile, testTime);

    printf("--------------------L1---------------------\n");
    l1->Print();
    printf("--------------------L2---------------------\n");
    l2->Print();
    printf("--------------------Mem---------------------\n");
    cached_memory->Print();
    return 0;
}