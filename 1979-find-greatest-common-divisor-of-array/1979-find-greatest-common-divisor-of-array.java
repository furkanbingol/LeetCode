class Solution {
    public int findGCD(int[] nums) {
        int min = nums[0], max = nums[0];
        
        for(int i = 1; i < nums.length; i++){
            if(nums[i] > max)
                max = nums[i];
            if(nums[i] < min)
                min = nums[i];
        }
        int res = min_max_gcd(min,max);
        return res;
    }
    
    public int min_max_gcd(int min, int max) {
        if (min == max)
            return min;
        for(int i = max/2; i >= 1; i--){
            if(max % i == 0 && min % i == 0)
                return i;
        }
        return 1;
    }
}