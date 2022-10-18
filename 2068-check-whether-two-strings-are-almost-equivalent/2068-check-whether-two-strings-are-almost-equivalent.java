class Solution {
    public boolean checkAlmostEquivalent(String word1, String word2) {
        int[] hash = new int[26];
    
        for(int i = 0; i < word1.length(); i++)
            hash[word1.charAt(i) - 'a']++;
        for(int i = 0; i < word2.length(); i++)
            hash[word2.charAt(i) - 'a']--;
        for(int i = 0; i < 26; i++){
            if(Math.abs(hash[i]) > 3)
                return false;
        }
        return true;
    }
}