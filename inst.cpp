#include "Simulate.h"
#include "Reg_Def.h"

int main()
{
    IF_ID.PC = 0;
    IF_ID.inst = 0x03010113u;
    IF_ID.Ctrl_ID_InstSize = INSTSIZE_32;
    ID();
    printf("%s\n", InstBuf);
    return 0;
}