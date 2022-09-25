class Solution {
    public String[] sortPeople(String[] names, int[] heights) {
        HashMap<Integer, String> map = new HashMap<>();
        String[] str = new String[names.length];

        for(int i = 0; i < names.length; i++)
            map.put(heights[i], names[i]);
        
        Integer[] sortedHeights = map.keySet().toArray(new Integer[0]);
        Arrays.sort(sortedHeights);
        int j = 0;
        for(int i = sortedHeights.length-1; i >= 0; i--)
            str[j++] = map.get(sortedHeights[i]);
        
        return str;
    }
}