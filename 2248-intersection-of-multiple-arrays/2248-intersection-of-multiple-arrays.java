class Solution {
    public List<Integer> intersection(int[][] nums) {
        List<Integer> list = new ArrayList<>();
        HashMap<Integer, Integer> map = new HashMap<>();

        for(int i = 0; i < nums.length; i++){
            for(int j = 0; j < nums[i].length; j++){
                if(!map.containsKey(nums[i][j]))
                    map.put(nums[i][j], 1);
                else
                    map.put(nums[i][j], map.get(nums[i][j]) + 1);
                if(map.get(nums[i][j]) == nums.length)
                    list.add(nums[i][j]);
            }
        }
        int[] sorted = new int[list.size()];
        for(int i = 0; i < sorted.length; i++) sorted[i] = list.get(i);
        Arrays.sort(sorted);
        list.clear();
        for(int i = 0; i < sorted.length; i++) list.add(sorted[i]);
        return list;
    }
}