int* sortedSquares(int* nums, int numsSize, int* returnSize){
    int i,j,tmp;
    int *k;
    k = (int*)malloc(sizeof(int) * numsSize);
    
    for(i = 0; i < numsSize; ++i)
        k[i] = nums[i]*nums[i];
    
    for(i = 0; i < numsSize-1; ++i)
    {
        j = i+1;
        for(; j < numsSize; ++j)
        {
            if(k[i] > k[j])
            {
                tmp = k[i];
                k[i] = k[j];
                k[j] = tmp;
            }
        }
    }
    
    *returnSize = numsSize;
    return k;
}