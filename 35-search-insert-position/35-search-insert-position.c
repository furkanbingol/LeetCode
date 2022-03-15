int searchInsert(int* nums, int numsSize, int target){
    int i;
    
    for(i = 0; i < numsSize; ++i)
    {
        if(nums[i] == target)
            return i;
        else if(i != numsSize-1 && (nums[i] < target && target < nums[i+1]))
            return i+1;
        else if(target < nums[0])
            return 0;
    }
    return numsSize;
}