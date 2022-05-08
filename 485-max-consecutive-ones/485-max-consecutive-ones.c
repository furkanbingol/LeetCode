int findMaxConsecutiveOnes(int* nums, int numsSize)
{
    int max = 0;
    int count = 0;
    
    int i = 0;
    for(i = 0; i < numsSize; i++)
    {
        if(nums[i] == 1)
            count++;
        else
        {
            if(count > max)
                max = count;
            count = 0;
        }
    }
    
    //for last element
    if(count > max)   
        max = count;
    
    return max;
}