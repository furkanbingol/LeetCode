int smallestEqual(int* nums, int numsSize){
    int i;
    
    for(i = 0; i < numsSize; ++i)
    {
        if(i % 10 == nums[i])
            return i;
    }
    return -1;
}