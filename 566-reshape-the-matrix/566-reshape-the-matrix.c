int** matrixReshape(int** mat, int matSize, int* matColSize, int r, int c, int* returnSize, int** returnColumnSizes){
    
    if(matSize * (*matColSize) != r * c){
        *returnSize = matSize;
        *returnColumnSizes = matColSize;
        return mat;
    }
    
    int **arr;
    int mi,mj;
    
    arr = malloc(sizeof(int*) * r);
    *returnColumnSizes = malloc(r * sizeof(int));
    
    for(int i = 0; i < r; i++){
        arr[i] = malloc(sizeof(int) * c);
        returnColumnSizes[0][i] = c;
    }
    
    mi = 0;
    mj = 0;
    for(int i = 0; i < r; i++){
        for(int j = 0; j < c; j++){
            if(mj < *matColSize){
                arr[i][j] = mat[mi][mj];
                mj++;
                if(mj == *matColSize){
                    mi++;
                    mj = 0;
                }
            }
        }
    }
    
    *returnSize = r;
    **returnColumnSizes = c;
    return arr;
}