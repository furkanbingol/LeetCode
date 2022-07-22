bool searchMatrix(int** matrix, int matrixSize, int* matrixColSize, int target){
    int lastElement = *matrixColSize-1;
    int l,r,mid;
    
    for(int i = 0; i < matrixSize; i++){
        if(target <= matrix[i][lastElement]){   //if (target > matrix[i][lastElement]), just i++;
            l = 0;
            r = *matrixColSize-1;
            while(l <= r){      //binary search
                mid = (l+r)/2;
                if(target > matrix[i][mid])
                    l = mid+1;
                else if(target < matrix[i][mid])
                    r = mid-1;
                else
                    return true;
            }
        }
    }
    return false;
}