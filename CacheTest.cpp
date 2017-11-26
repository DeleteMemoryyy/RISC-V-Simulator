#include "Simulate.h"

using namespace std;

string fileName = "Test/";

char buf[100];

int main(int argc, char **argv)
{
    if (argc < 2)
        {
            printf("file not found!\n");
            return 1;
        }
    sprintf(buf, "%s", *(argv + 1));
    fileName += string(buf);
    if (!read_elf(fileName))
        {
            printf("file not found!\n");
            return 1;
        }
    setup();
    while (simulate_one_step())
        ;
    printf("Instruction Count: %d\t Total Cycles: %d\t CPI: %.3f\n", InstCount,
           CycleCount + l1->access_time - l1->access_count,
           (float)(CycleCount + l1->access_time - l1->access_count) / (float)(InstCount));
    l1->Print();
    l2->Print();
    l3->Print();
    cached_memory->Print();
    return 0;
}
