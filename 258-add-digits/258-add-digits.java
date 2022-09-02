class Solution {
    public int addDigits(int num) {
        int s = 0;
        
        while(num > 0){
            s += num % 10;
            num /= 10;
        }
        while(s >= 10){
            int tmp = s;
            s = 0;
            while(tmp > 0){
                s += tmp % 10;
                tmp /= 10;
            }
        }
        return s;
    }
}