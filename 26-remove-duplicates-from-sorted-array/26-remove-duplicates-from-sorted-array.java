class Solution {
    public int removeDuplicates(int[] nums) {
        int val = nums[0];
        int k = 1;
        
        for(int i = 1; i < nums.length; i++){
            if(nums[i] != val){
                val = nums[i];
                nums[k++] = nums[i]; 
            }
        }
        
        return k;
    }
}