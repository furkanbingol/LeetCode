class Solution {
    public int maxNumberOfBalloons(String text) {
        int num = Integer.MAX_VALUE;
        int[] arr = new int[5];
        
        for(int i = 0; i < text.length(); i++){
            if(text.charAt(i) == 'b') arr[0]++;
            else if(text.charAt(i) == 'a') arr[1]++;
            else if(text.charAt(i) == 'l') arr[2]++;
            else if(text.charAt(i) == 'o') arr[3]++;
            else if(text.charAt(i) == 'n') arr[4]++;
        }
        
        for(int i = 0; i < arr.length; i++){
            if(arr[i] == 0)
                return 0;
            else if(i != 2 && i != 3 && arr[i] < num)
                num = arr[i];
            else if((i == 2 || i == 3) && arr[i] / 2 < num)
                num = arr[i] / 2;
        }
        return num;
    }
}