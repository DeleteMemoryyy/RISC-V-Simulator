#include "Simulate.h"

using namespace std;

string fileName = "Test/qsort_mod";

int main()
{
    read_elf(fileName);
    setup();
    while (simulate_one_step())
        ;
}
