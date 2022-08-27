class Solution {
    public int dominantIndex(int[] nums) {
        int max = -1, maxIndex = -1;
        
        for(int i = 0; i < nums.length; i++){
            if(nums[i] > max){
                max = nums[i];
                maxIndex = i;
            }
        }
        
        for(int i = 0; i < nums.length; i++){
            if(i != maxIndex){
                if(2 * nums[i] > max)
                    return -1;
            }
        }
        return maxIndex;
    }
}