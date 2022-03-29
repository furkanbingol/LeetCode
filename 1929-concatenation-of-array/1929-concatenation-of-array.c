int* getConcatenation(int* nums, int numsSize, int* returnSize){
    int *k;
    k = (int*)malloc(sizeof(int) * numsSize * 2);
    
    for(int i = 0; i < numsSize*2 ; ++i)
    {
        k[i] = nums[i % numsSize];
    }
    *returnSize = numsSize*2;
    return k;
}