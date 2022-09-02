class Solution {
    public boolean isUgly(int n) {
        if(n == 0) return false;
        
        int flag = 0;
        while(n != 1 && flag == 0){
            if(n % 2 == 0) n /= 2;
            else if(n % 3 == 0) n /= 3;
            else if(n % 5 == 0) n /= 5;
            else flag = 1;
        }
        return (flag == 0 ? true : false);
    }
}