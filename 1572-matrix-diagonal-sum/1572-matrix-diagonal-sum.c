int diagonalSum(int** mat, int matSize, int* matColSize){
    int i,s = 0;
    for(i = 0; i < matSize; ++i)
        s += mat[i][i] + mat[i][matSize-i-1];
    if (matSize % 2 == 1)
        s -= mat[matSize/2][matSize/2];
    
    return s;
}