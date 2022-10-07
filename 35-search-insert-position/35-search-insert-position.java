class Solution {
    public int searchInsert(int[] nums, int target) {
        int l = 0;
        int r = nums.length-1;
        
        while(l <= r)
        {
            int mid = (l + r) / 2;
            if(nums[mid] == target)
                return mid;
            else if(mid+1 < nums.length && target > nums[mid] && nums[mid+1] > target)
                return mid+1;
            else if(target > nums[mid] && mid+1 == nums.length)
                return mid+1;
            else if(nums[mid] > target)
                r = mid-1;
            else
                l = mid+1;
        }
        return 0;
    }
}