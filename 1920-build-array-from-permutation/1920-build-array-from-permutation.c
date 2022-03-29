int* buildArray(int* nums, int numsSize, int* returnSize){
    int *k;
    int i;
    k = (int*)malloc(sizeof(int) * numsSize);
    
    for(i = 0; i < numsSize ; ++i)
    {
        k[i] = nums[nums[i]];
    }
    *returnSize = numsSize;
    return k;
}