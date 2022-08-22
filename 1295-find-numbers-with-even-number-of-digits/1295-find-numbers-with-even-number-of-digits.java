class Solution {
    public int findNumbers(int[] nums) {
        int c = 0;
        for(int i : nums){
            if(numberOfDigit(i) % 2 == 0)
                c++;
        }
        return c;
    }
    
    public int numberOfDigit(int n){
        int digit = 0;
        
        while(n != 0){
            digit++;
            n /= 10;
        }
        
        return digit;
    }
}