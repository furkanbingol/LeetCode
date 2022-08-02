int arrangeCoins(int n){
    int i = 1;
    long sum;
    
    while (i <= n){
        sum += i;
        if(sum == n) return i;
        else if(sum > n) return i-1;
        i++;
    }
    return 1; //if n=1
}