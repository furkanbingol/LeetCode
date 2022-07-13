typedef struct Coordinates{
    int row;
    int col;
}coordinates;

int* luckyNumbers (int** matrix, int matrixSize, int* matrixColSize, int* returnSize){
    int *lucky;
    int i,j,k,x,check;
    int minRow,maxCol;
    coordinates cor[matrixSize];
    
    lucky = (int *)malloc(sizeof(int) * matrixSize);
    
    k = 0;
    for(i = 0; i < matrixSize; i++){
        minRow = INT_MAX;
        for(j = 0; j < *matrixColSize; j++){
            if(matrix[i][j] < minRow){
                minRow = matrix[i][j];
                cor[i].row = i;
                cor[i].col = j;
            }
        }
        maxCol = matrix[cor[i].row][cor[i].col];
        check = 0;
        x = 0;
        while(x < matrixSize && !check){
            if(x != cor[i].row){
                if(matrix[x][cor[i].col] > maxCol)
                    check = 1;
            }
            x++;
        }
        if(!check)
            lucky[k++] = matrix[cor[i].row][cor[i].col];
    }
    *returnSize = k;
    return lucky;
}