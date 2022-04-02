int maxProduct(int* nums, int numsSize){
    int i,j;
    int max = (nums[0]-1) * (nums[1]-1);
    for(i = 0 ; i < numsSize - 1; ++i)
    {
        j = i + 1;
        for(; j < numsSize; ++j)
        {
            if((nums[i]-1) * (nums[j]-1) > max)
                max = (nums[i]-1) * (nums[j]-1);
        }
    }
    return max;
}