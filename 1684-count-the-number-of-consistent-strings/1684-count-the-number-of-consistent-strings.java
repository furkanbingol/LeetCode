class Solution {
    public int countConsistentStrings(String allowed, String[] words) {
        int i,j,valid = 0;
        HashSet<Character> set = new HashSet<>();
        
        for(i = 0 ; i < allowed.length(); i++)
            set.add(allowed.charAt(i));
        
        for(i = 0; i < words.length; i++){
            for(j = 0; j < words[i].length(); j++){
                if(!set.contains(words[i].charAt(j)))
                    break;
            }
            if(j == words[i].length())
                valid++;
        }
        return valid;
    }
}