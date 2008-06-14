#include <stdlib.h>
#include <stdio.h>
#include "string.h".


int main(int argc,char **argv[])
{

	if(argc == 1)
		printf("Usage : ./malloc_bomb <-i (run infinitely)>  or ./malloc_bomb <num_iterations>");
	else
	{
		int i=0,k=0;

		if(strcmp(argv[1],"-i") == 0)
		{
			while(1)
			{
				calloc(1,1024);
			}
		}
		else
		{
			k =atoi(argv[1]);

			for(i=0; i < k; i++)
			{
				calloc(1,1024);
			}
		}
	}
	return 0;
}
