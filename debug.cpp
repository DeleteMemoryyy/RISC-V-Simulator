#include "Simulate.h"

using namespace std;

string fileName = "Test/n";

int main()
{
    read_elf(fileName);
    setup();
    while (simulate_one_step())
        ;
}
