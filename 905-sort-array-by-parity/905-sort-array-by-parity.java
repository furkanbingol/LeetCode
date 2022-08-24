class Solution {
    public int[] sortArrayByParity(int[] nums) {
        int j,k,tmp;
        
        for(int i = 0; i < nums.length; i++){
            if(nums[i] % 2 == 0){
                if(i != 0){
                    j = i-1;
                    k = i;
                    while(j >= 0){
                        if(nums[j] % 2 != 0){
                            tmp = nums[k];
                            nums[k] = nums[j];
                            nums[j] = tmp;
                            k--;
                        }
                        j--;
                    }
                }
            }
        }
        return nums;
    }
}