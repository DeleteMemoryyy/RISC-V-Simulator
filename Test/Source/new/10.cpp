#include<stdio.h>

int a=1,b=2,c=3;

int main()
{
	a=b+c;	// a = 5
	b=a*c;	// b = 15
	c=b-c;	// c = 12
	a=b/c;	// a = 1
	return 0;
}