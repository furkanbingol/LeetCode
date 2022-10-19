class Solution {
    public int[] findArray(int[] pref) {
        int[] arr = new int[pref.length];
        int value = arr[0] = pref[0];
        
        for(int i = 1; i < pref.length; i++){
            arr[i] = value ^ pref[i];
            value = pref[i];
        }
        return arr;
    }
}