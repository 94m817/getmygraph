#include <stdio.h>
#include <time.h>
///*
int main()
{
	clock_t start, cend;
	double elapsed;
	start = clock();
	elapsed = ((double)start);
	printf("Size of int = %d \n", sizeof(int));
	printf("%f\n", elapsed);
	cend = clock();
	elapsed = ((double)cend);
	//elapsed = ((double) (cend - start)) / CLOCKS_PER_SEC;
	printf("Time taken = %f \n", elapsed);
	return 0;
}
//*/
/*
int main(){

	int i, j, c = 0;
	clock_t start, end;
	start = clock();

	for(i=0;i<100;i++)
	{
		for(j=0; j<(1<<20);j++)
			c++;
	}
	end=clock();
//	printf("Start = %d, end = %d\n", start, end);
	printf("Time Taken =  %.2f\n", 1.0*(end-start));

	return 0;
	}

*/
