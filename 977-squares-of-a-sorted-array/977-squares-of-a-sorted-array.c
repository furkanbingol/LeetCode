int* sortedSquares(int* nums, int numsSize, int* returnSize){
    int i,j,min,tmp;
    int *k;
    k = (int*)malloc(sizeof(int) * numsSize);
    
    for(i = 0; i < numsSize; ++i)
        k[i] = nums[i]*nums[i];
    
    //selection sort
    for(i = 0; i < numsSize-1; ++i)
    {
        min = i;
        for(j = i+1; j < numsSize; ++j)
        {
            if(k[j] < k[min])
                min = j;
        }
        if(i != min)
        {
            tmp = k[i];
            k[i] = k[min];
            k[min] = tmp;
        }
    }
    *returnSize = numsSize;
    return k;
}