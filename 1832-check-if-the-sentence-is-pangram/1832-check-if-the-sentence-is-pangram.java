class Solution {
    public boolean checkIfPangram(String sentence) {
        HashMap<Character, Integer> map = new HashMap<>();

        for(int i = 0; i < sentence.length(); i++){
            if(!map.containsKey(sentence.charAt(i)))
                map.put(sentence.charAt(i), 1);
            else
                map.put(sentence.charAt(i), map.get(sentence.charAt(i)) + 1);
        }
        return (map.size() == 26);
    }
}