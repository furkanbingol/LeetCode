class Solution {
    //O(n) time complexity and O(1) space complexity
    public boolean increasingTriplet(int[] nums) {
        if(nums.length < 3) return false;
        
        int p1 = -1, p2 = -1;
        for(int i = 0; i < nums.length-1; i++){
            if(nums[i] < nums[i+1] && p1 == -1){
                p1 = i;
                p2 = i+1;
            }
            else if(p1 != -1 && nums[i] < nums[p1])
                p1 = i;
            else if(p2 != -1 && nums[p1] < nums[i])
                p2 = i;
            if(p2 != -1 && (nums[p2] < nums[i] || nums[p2] < nums[i+1] 
                || (i == nums.length-2 && nums[p2] < nums[i+1])))
                return true;
        }
        return false;
    }
}