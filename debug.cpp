#include "Simulate.h"

using namespace std;

string fileName = "Test/mul";

int main()
{
    read_elf(fileName);
    setup();
    while (simulate_one_step())
        ;
}
