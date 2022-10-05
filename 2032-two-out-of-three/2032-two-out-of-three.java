class Solution {
    public List<Integer> twoOutOfThree(int[] nums1, int[] nums2, int[] nums3) {
        List<Integer> list = new ArrayList<>();
        List<Integer> isUnique = new ArrayList<>();
        HashMap<Integer, Integer> map = new HashMap<>();

        for(int i = 0; i < nums1.length; i++){
            if(!map.containsKey(nums1[i]))
                map.put(nums1[i], 1);
        }
        for(int i = 0; i < nums2.length; i++){
            if(!map.containsKey(nums2[i])){
                isUnique.add(nums2[i]);
                map.put(nums2[i], 1);
            }
            else if(isUnique(nums2[i], isUnique))
                map.put(nums2[i], map.get(nums2[i]) + 1);
        }
        isUnique.clear();
        for(int i = 0; i < nums3.length; i++){
            if(!map.containsKey(nums3[i])){
                isUnique.add(nums3[i]);
                map.put(nums3[i], 1);
            }
            else if(isUnique(nums3[i], isUnique))
                map.put(nums3[i], map.get(nums3[i]) + 1);
        }

        Integer[] keyArray = map.keySet().toArray(new Integer[0]);

        for(int i = 0; i < keyArray.length; i++){
            if(map.get(keyArray[i]) >= 2)
                list.add(keyArray[i]);
        }
        return list;
    }

    public boolean isUnique(int val, List<Integer> list) {
        for(int i = 0; i < list.size(); i++){
            if(val == list.get(i))
                return false;
        }
        list.add(val);
        return true;
    }
}