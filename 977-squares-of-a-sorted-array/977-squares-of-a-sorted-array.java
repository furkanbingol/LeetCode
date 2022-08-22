class Solution {
    public int[] sortedSquares(int[] nums) {
        int[] result = new int[nums.length];
        int l = 0;
        int r = nums.length-1;
        int i = nums.length-1;
        
        while(l <= r){
            int n1 = nums[r]*nums[r];
            int n2 = nums[l]*nums[l];
            
            if(n1 > n2){
                result[i] = n1;
                i--;
                r--;
            }
            else{
                result[i] = n2;
                i--;
                l++;
            }
        }
        return result;
    }
}