class Solution {
    public int largestAltitude(int[] gain) {
        int max = 0;
        int tmp = 0;
        
        for(int i = 0; i < gain.length; i++){
            tmp += gain[i];
            if(tmp > max)
                max = tmp;
        }
        return max;
    }
}