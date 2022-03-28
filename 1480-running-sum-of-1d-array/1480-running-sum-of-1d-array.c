int* runningSum(int* nums, int numsSize, int* returnSize){
    int *k;
    int i,sum = 0;
    
    k = (int*)malloc(sizeof(int) * numsSize);
    
    for(i = 0; i < numsSize; ++i)
    {
        sum += nums[i];
        k[i] = sum;
    }
    *returnSize = numsSize;
    return k;
}