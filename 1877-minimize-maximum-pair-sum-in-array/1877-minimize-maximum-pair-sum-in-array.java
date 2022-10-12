class Solution {
    public int minPairSum(int[] nums) {
        int max = -1;
        Arrays.sort(nums);
        
        for(int i = 0, j = nums.length-1; i < nums.length/2; i++,j--){
            if(nums[i] + nums[j] > max)
                max = nums[i] + nums[j];
        }
        return max;
    }
}