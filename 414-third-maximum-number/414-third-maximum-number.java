class Solution {
    public int thirdMax(int [] nums){
        Set<Integer> hashSet = new HashSet<>();

        for(int num : nums)
            hashSet.add(num);

        if(hashSet.size() >= 3){
            hashSet.remove(Collections.max(hashSet));
            hashSet.remove(Collections.max(hashSet));
        }
        return Collections.max(hashSet);
    }
}