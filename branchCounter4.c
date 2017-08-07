//Script to generate a list of branches and their outcome following the format above
//First column: the id or address of the branch
//Second column: the outcome of the branch
// 0 means the branch is not taken (0 = NT)
// 1 means the branch is taken (1 = NT)

#include <stdio.h>

int main() {
	FILE *fptr;
    fptr = fopen("vhdl_input4.txt", "w"); //open the file to store the data

    for(int i =0; i<1000; i++){
    	//fprintf(fptr, "1 T\n");
    	if(i != 0)	//first time in the loop, no branch
        	fprintf(fptr, "1 1\n");

    	for(int j=0; j<4; j++){
    		//fprintf(fptr, "2 T\n");
    		if (j != 0) //first time in the loop, no branch
            	fprintf(fptr, "2 1\n");

            for(int k=0; k<20; k++){
                if (k != 0) //first time in the loop, no branch
                    fprintf(fptr, "3 1\n");

                for(int l=0; l<20; l++){
                    if (l != 0) //first time in the loop, no branch
                        fprintf(fptr, "4 1\n");
                }
                fprintf(fptr, "4 0\n");
            }
            fprintf(fptr, "3 0\n");
    	}

    	//fprintf(fptr, "2 NT\n");
        fprintf(fptr, "2 0\n");
    }

    //fprintf(fptr, "1 NT\n");
    fprintf(fptr, "1 0\n");

	return 0;
}
