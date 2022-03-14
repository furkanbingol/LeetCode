int removeDuplicates(int* nums, int numsSize){
    int i;
    
    int j = 1;
    for(i = 1; i < numsSize; i++)
    {
        if(nums[i] != nums[i-1])
            nums[j++] = nums[i];
    }
    return j;
}