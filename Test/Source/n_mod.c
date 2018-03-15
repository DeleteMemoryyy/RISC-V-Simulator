#include <stdio.h>

int result = 1;
int result1 = 0;
// result 3628800
int cal_n(int i)
{
    if (i == 1)
        return 1;
    else
        {
            result *= i;
            return i * cal_n(i - 1);
        }
}

int main()
{
    result1 = cal_n(10);
    return 0;
}