bool searchMatrix(int** matrix, int matrixSize, int* matrixColSize, int target){
    int x = 0, y = *matrixColSize - 1;
    while(x < matrixSize && y >= 0)
        if(matrix[x][y] < target)
            x++;
        else if(matrix[x][y] > target)
            y--;
        else
            return true;
    return false;
}