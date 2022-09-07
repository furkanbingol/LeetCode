class Solution {
    public int[] shuffle(int[] nums, int n) {
        int[] arr = new int[2*n];
        int i = 0, j = n, k = 0;
        
        while(k < 2*n)
        {
            if(k % 2 == 0)
                arr[k] = nums[i++];
            else
                arr[k] = nums[j++];
            k++;
        }
        return arr;
    }
}