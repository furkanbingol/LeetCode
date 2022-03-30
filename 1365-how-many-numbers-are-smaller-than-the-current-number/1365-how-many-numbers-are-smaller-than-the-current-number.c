int* smallerNumbersThanCurrent(int* nums, int numsSize, int* returnSize){
    int *k;
    int i,j,cnt;
    k = (int*)malloc(sizeof(int) * numsSize);
    
    for(i = 0; i < numsSize; ++i)
    {
        cnt = 0;
        for(j = 0; j < numsSize; ++j)
        {
            if(i != j && (nums[i] > nums[j]))
                cnt++;
        }
        k[i] = cnt;
    }
    
    *returnSize = numsSize;
    return k;
}