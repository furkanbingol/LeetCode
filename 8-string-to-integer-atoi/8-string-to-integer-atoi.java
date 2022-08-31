class Solution {
    public int myAtoi(String s) {
        long res = 0;
        int sign = 1;
        int i = 0;
        
        if(s.length() == 0 || s == null)
            return 0;
        
        while(i < s.length() && s.charAt(i) <= 32)
            i++;
        
        if(i < s.length() && (s.charAt(i) == '+' || s.charAt(i) == '-')){
            if(s.charAt(i) == '-')
                sign *= -1;
            i++;
        }
        
        while(i < s.length() && s.charAt(i) >= '0' && s.charAt(i) <= '9'){
            res = res * 10 + (s.charAt(i) - '0');
            i++;
            if(res * sign > Integer.MAX_VALUE)
                return Integer.MAX_VALUE;
            else if(res * sign < Integer.MIN_VALUE)
                return Integer.MIN_VALUE;
        }
        
        return (sign * (int)res);
    }
}