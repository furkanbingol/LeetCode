int *search(int* nums, int left, int right, int target)
{
    int *ans = malloc(sizeof(int)*2);
    while(left <= right)
    {
        if(nums[right] == target && nums[left] == target)
        {
            ans[0] = left;
            ans[1] = right;
            return ans;
        }
        else if (nums[right] == target)
        {
            left++;
        }
        else if (nums[left] == target)
        {
            right--;
        }
        else
        {
            left++;
            right--;
        }
    }
    ans[0] = -1;
    ans[1] = -1;
    return ans;
}

int* searchRange(int* nums, int numsSize, int target, int* returnSize)
{
    *returnSize = 2;
    return search(nums, 0, numsSize-1, target);
}