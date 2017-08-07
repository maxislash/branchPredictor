//Script to generate a list of branches and their outcome following the format above
//First column: the id or address of the branch
//Second column: the outcome of the branch
// 0 means the branch is not taken (0 = NT)
// 1 means the branch is taken (1 = NT)

#include <stdio.h>
#include <stdlib.h>

int main() {
	FILE *fptr;
    fptr = fopen("vhdl_input3.txt", "w"); //open the file to store the data

    for(int i =0; i<1000; i++){
    	//fprintf(fptr, "1 T\n");
    	if(i != 0)	//first time in the loop, no branch
        	fprintf(fptr, "1 1\n");

        if(rand()%2 == 0) {
            for(int j=0; j<4; j++){
                if (j != 0) //first time in the loop, no branch
                    fprintf(fptr, "2 1\n");
            }
            fprintf(fptr, "2 0\n");
        }

    }

    fprintf(fptr, "1 0\n");

	return 0;
}
