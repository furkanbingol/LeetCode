class Solution {
    public int findReverse(int k) {
        List<Integer> list = new ArrayList<>();
        int res = 0;
        
        while(k != 0){
            list.add(k % 10);
            k /= 10;
        }
        for(int i = 0; i < list.size(); i++)
            res = res * 10 + list.get(i);
        return res;
    }
    
    public int countDistinctIntegers(int[] nums) {
        HashSet<Integer> set = new HashSet<>();
        
        for(int i = 0; i < nums.length; i++){
            set.add(nums[i]);
            set.add(findReverse(nums[i]));
        }
        return set.size();
    }
}