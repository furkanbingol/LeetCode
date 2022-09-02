class Solution {
    public int missingNumber(int[] nums) {
        int len = nums.length;
        int sumOfArray = (len * (len+1))/2;
        for(int i = 0; i < len; i++) 
            sumOfArray -= nums[i];
        return sumOfArray;
    }   
}
//Time: O(n) , Memory: O(1)