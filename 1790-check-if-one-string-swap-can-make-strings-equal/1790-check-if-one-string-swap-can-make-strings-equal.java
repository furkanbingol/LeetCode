class Solution {
    public boolean areAlmostEqual(String s1, String s2) {
        if(s1.equals(s2))
            return true;
        if(s1.length() != s2.length())
            return false;
        
        int i = 0, diff = 0;
        int[] alph = new int[26];
        for(i = 0; i < s1.length(); i++)
            alph[s1.charAt(i) - 'a']++;
        for(i = 0; i < s2.length(); i++){
            if(alph[s2.charAt(i) - 'a'] == 0)
                return false;
            else
                alph[s2.charAt(i) - 'a']--;
        }
        for(i = 0; i < 26; i++){
            if(alph[i] != 0) 
                return false;
        }
        i = 0;
        while(i < s1.length())
        {
            if(s1.charAt(i) != s2.charAt(i))
                diff++;
            i++;
        }
        return (diff == 2);
    }
}