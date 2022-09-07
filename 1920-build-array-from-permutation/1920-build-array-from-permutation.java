//Follow-up: Can you solve it without using an extra space (i.e., O(1) memory)?

class Solution {
    public int[] buildArray(int[] nums) {
        int n = nums.length;
        
        for(int i = 0; i < n; i++)                          
            nums[i] = nums[i] + n * (nums[nums[i]] % n);     
        
        for(int i = 0; i < n; i++)
            nums[i] = nums[i] / n;
        
        return nums;
    }
}