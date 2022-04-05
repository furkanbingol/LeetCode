int searchInsert(int* nums, int numsSize, int target){
    int l,r,mid;
    l = 0;
    r = numsSize-1;
    
    while(l <= r)
    {
        mid = (l+r)/2;
        if(target > nums[numsSize-1])
            return numsSize;
        else if(nums[mid] == target)
            return mid;
        else if(target > nums[mid] && target < nums[mid+1])
            return mid+1;
        else if(target < nums[mid])
            r = mid-1;
        else if(target > nums[mid])
            l = mid+1;
    }
    return 0;
}
