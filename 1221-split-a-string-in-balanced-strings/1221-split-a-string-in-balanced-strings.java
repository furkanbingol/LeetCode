class Solution {
    public int balancedStringSplit(String s) {
        int c = 0;
        int n = 0;
        
        for(int i = 0; i < s.length(); i++){
            if(s.charAt(i) == 'R')
                n++;
            else
                n--;
            if(n == 0)
                c++;
        }
        return c;
    }
}