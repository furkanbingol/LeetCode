class Solution {
    public int repeatedNTimes(int[] nums) {
        int[] arr = new int[10001];
        for(int i = 0; i < nums.length; i++){
            arr[nums[i]]++;
            if(arr[nums[i]] == 2)
                return nums[i];
        }
        return nums[0];
    }
}