class Solution {
    public int minimumOperations(int[] nums) {
        int minOp = 0;
        boolean flag = true;
        int i, j = 0;
        
        while(flag){
            Arrays.sort(nums);
            while(j < nums.length && nums[j] == 0)
                j++;
            i = 0;
            while(i < nums.length){
                if(nums[i] != 0){
                    if(i != j)
                        nums[i] -= nums[j];
                }
                i++;
            }
            if(j != nums.length){
                nums[j] = 0;
                minOp++;
            }
            i = 0;
            while(i < nums.length){
                if(nums[i] != 0)
                    break;
                i++;
            }
            if(i == nums.length)
                flag = false;
        }
        return minOp;
    }
}