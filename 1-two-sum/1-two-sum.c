int* twoSum(int* nums, int numsSize, int target, int* returnSize){
    *returnSize = 2;
    
    int* r;
    int i,j;
    r = (int*)malloc(sizeof(int) * 2);
    
    for(i = 0; i < numsSize - 1; i++)
    {
        j = i + 1;
        for(; j < numsSize; j++)
        {
            if(nums[i] + nums[j] == target)
            {
                r[0] = i;
                r[1] = j;
                return (r);
            }
        }
    }
    return (NULL);
}