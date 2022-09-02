class Solution {
    public boolean isPalindrome(int x) {
        if(x < 0) return false;
        
        int digit = digitsNumber(x);
        int tmp = x; 
        long s = 0;
        
        for(; digit >= 1; digit--){
            s += (tmp % 10) * Math.pow(10, digit-1);
            tmp /= 10;
        }
        return (x == s);
    }
    
    public int digitsNumber(int k){
        int digit = 1;
        
        while(k > 9){
            k /= 10;
            ++digit;
        }
        
        return digit;
    }
}