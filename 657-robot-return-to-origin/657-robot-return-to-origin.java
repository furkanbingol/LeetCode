class Solution {
    public boolean judgeCircle(String moves) {
        int[] arr = new int[4];   //0='U', 1='D', 2='L', 3='R'
        int i = 0;
        int len = moves.length();

        while(i < len)
        {
            if     (moves.charAt(i) == 'U') arr[0]++;
            else if(moves.charAt(i) == 'D') arr[1]++;
            else if(moves.charAt(i) == 'L') arr[2]++;
            else if(moves.charAt(i) == 'R') arr[3]++;
            i++;
            if(Math.abs(arr[0] - arr[1]) > (len - i))
                return false;
            if(Math.abs(arr[2] - arr[3]) > (len - i))
                return false;
        }
        return true;
    }
}