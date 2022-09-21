class Solution {
    public String firstPalindrome(String[] words) {
        for(int i = 0; i < words.length; i++){
            if(isPalindrome(words[i]))
                return words[i];
        }
        return "";
    }
    
    public boolean isPalindrome(String str) {
        int len = str.length();
        
        for(int i = 0; i < len/2; i++){
            if(str.charAt(i) != str.charAt(len-1-i))
                return false;
        }
        return true;
    }
}