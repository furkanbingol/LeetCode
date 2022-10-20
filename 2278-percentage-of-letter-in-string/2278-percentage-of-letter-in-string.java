class Solution {
    public int percentageLetter(String s, char letter) {
        int per = 0,i;
        
        for(i = 0; i < s.length(); i++){
            if(s.charAt(i) == letter)
                per++;
        }
        return (per * 100) / i;
    }
}