class Solution {
    public int sumOfUnique(int[] nums) {
        HashMap<Integer, Integer> map = new HashMap<>();
        int sum = 0;

        for(int i = 0; i < nums.length; i++){
            if(!map.containsKey(nums[i]))
                map.put(nums[i], 1);
            else
                map.put(nums[i], map.get(nums[i]) + 1);
        }

        Integer[] arr = map.keySet().toArray(new Integer[0]);
        for(int i = 0; i < map.size(); i++){
            if(map.get(arr[i]) == 1)
                sum += arr[i];
        }
        return sum;
    }
}