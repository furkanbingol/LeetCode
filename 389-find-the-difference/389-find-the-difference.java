class Solution {
    public char findTheDifference(String s, String t) {
        int ch = 0;
        
        for(int i = 0; i < t.length(); i++){
            if(i != t.length() - 1) ch += t.charAt(i) - s.charAt(i);
            else ch += t.charAt(i);
        }
        return (char)ch;
    }
}