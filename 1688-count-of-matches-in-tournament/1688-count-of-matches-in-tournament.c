int numberOfMatches(int n){
    int r = 0;
    while(n > 1)
    {
        r += n / 2;
        n = n - n/2;
    }
    return r;
}