class Solution {
    public boolean checkPerfectNumber(int num) {
        if(num == 1) return false;
        
        int sum = 1;
        int i = 2;
        while(i * i <= num){
            if(num % i == 0){
                sum += i;        //add first divisor
                sum += num/i;    //add last divisor
            }
            i++;
        }
        
        return (sum == num ? true : false);
    }
}