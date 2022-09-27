class Solution {
    public int maxPower(String s) {
        int max = 1, tmp = 1;
        
        for(int i = 1; i < s.length(); i++){
            if(s.charAt(i-1) == s.charAt(i)){
                tmp++;
                if(tmp > max)
                    max = tmp;
            }
            else
                tmp = 1;
        }
        return max;
    }
}