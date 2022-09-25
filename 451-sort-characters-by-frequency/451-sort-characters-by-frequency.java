class Solution {
    public String frequencySort(String s) {
        HashMap<Character, Integer> map = new HashMap<>();
        StringBuilder str = new StringBuilder();

        for(int i = 0; i < s.length(); i++){
            if(map.containsKey(s.charAt(i)))
                map.put(s.charAt(i), map.get(s.charAt(i)) + 1);   //increment one
            else{
                map.put(s.charAt(i),1);

            }
        }
        Integer[] sortedValues = map.values().toArray(new Integer[0]);
        Arrays.sort(sortedValues);
        
        int j,count;
        for(int i = sortedValues.length-1; i >= 0; i--){
            j = 0;
            count = 0;
            while(map.get(s.charAt(j)) != sortedValues[i])
                j++;
            while(count++ < sortedValues[i])
                str.append(s.charAt(j));
            map.remove(s.charAt(j));
        }
        return str.toString();
    }
}