int arr[40] = {0};

int tribonacci(int n) {
    if(n < 2)
        return n;
    else if(n == 2) 
        return 1;
    else
    {
       if(arr[n] != 0)
           return arr[n];
       else
       {
           int l = tribonacci(n-1)+tribonacci(n-2)+tribonacci(n-3);
           arr[n] = l;
           return l;
       }
    }
}