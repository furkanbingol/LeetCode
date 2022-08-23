class Solution {
    public int[] replaceElements(int[] arr) {
        int max;
        for(int i = 0; i < arr.length-1; i++){
            max = -1;
            for(int j = i+1; j < arr.length; j++){
                if(arr[j] > max)
                    max = arr[j];
            }
            arr[i] = max;
        }
        arr[arr.length-1] = -1;     //for the last element
        return arr;
    }
}

/*
#Another Solution#

class Solution {
    public int[] replaceElements(int[] arr) {

        int max = -1;

        for (int i = arr.length - 1; i >= 0; i--) {
            int temp = arr[i];
            arr[i] = max;
            max = Math.max(temp, max);
        }

        return arr;
    }
}
*/