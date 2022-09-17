class Solution {
    public int[] smallerNumbersThanCurrent(int[] nums) {
        int[] freq = new int[101];

        for(int i : nums)
            freq[i]++;
        for(int i = 1; i < 101; i++)
            freq[i] += freq[i-1];
        
        for(int i = 0; i < nums.length; i++) {
            if(nums[i] != 0)
                nums[i] = freq[nums[i] - 1];
        }
        return nums;
    }
}