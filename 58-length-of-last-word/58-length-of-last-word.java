class Solution {
    public int lengthOfLastWord(String s) {
        int last = s.length()-1;
        int c = 0;
        
        while(last >= 0 && s.charAt(last) == ' ') 
            last--;
        
        for(; last >= 0; last--){
            if(s.charAt(last) != ' ') c++;
            else break;
        }
        
        return c;
    }
}