int digitCount(int x)
{
    int count = 0;
    
    while(x > 0)
    {
        x /= 10;
        count++;
    }
    return count;
}

int findNumbers(int* nums, int numsSize){
    int i = 0;
    int c = 0;
    
    while(i < numsSize)
    {
        if(digitCount(nums[i]) % 2 == 0)
            ++c;
        ++i;
    }
    return c;
}