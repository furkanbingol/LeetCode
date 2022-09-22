class Solution {
    public int[] sumZero(int n) {
        int[] arr = new int[n];
        int val;
        
        if(n % 2 == 0){
            val = -n + 1;
            for(int i = 0; i < n; i++){
                arr[i] = val;
                val += 2;
            }
        }
        else{
            val = -n/2;
            for(int i = 0; i < n; i++){
                arr[i] = val++;
            }
        }    
        return arr;
    }
}