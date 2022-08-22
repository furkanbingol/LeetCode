class Solution {
    public int findMaxConsecutiveOnes(int[] nums) {
        int count = 0;
        int max = 0;
        
        for(int i : nums){
            if(i == 1)
                count++;
            else{
                if(count > max)
                    max = count;
                count = 0;
            }
        }
        if(count > max)
            max = count;
        
        return max;
    }
}