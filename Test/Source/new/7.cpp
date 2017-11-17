#include<stdio.h>
int result[6]={1,2,3,4,5,6};
int temp=2;
int main()
{
	for(int i=1;i<=5;i++)
	{
		result[i]=result[i]+1;	// result[6] = {1, 3, 4, 5, 6, 7}
		temp=temp*i;	// temp = 240
	}	
	return 0;
}