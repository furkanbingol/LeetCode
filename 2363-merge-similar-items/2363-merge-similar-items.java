class Solution {
    public List<List<Integer>> mergeSimilarItems(int[][] items1, int[][] items2) {
        List<List<Integer>> list = new ArrayList<>();
        HashMap<Integer, Integer> map = new HashMap<>();

        getMap(items1, map);
        getMap(items2, map);

        Integer[] sortedKeys = map.keySet().toArray(new Integer[0]);
        Arrays.sort(sortedKeys);

        for(int i = 0; i < sortedKeys.length; i++){
            List<Integer> tmp = new ArrayList<>();
            tmp.add(sortedKeys[i]);
            tmp.add(map.get(sortedKeys[i]));
            list.add(tmp);
        }
        return list;
    }

    public void getMap(int[][] items, HashMap<Integer, Integer> map) {
        for(int i = 0; i < items.length; i++){
            if(!map.containsKey(items[i][0]))
                map.put(items[i][0], items[i][1]);
            else
                map.put(items[i][0], map.get(items[i][0]) + items[i][1]);
        }
    }
}