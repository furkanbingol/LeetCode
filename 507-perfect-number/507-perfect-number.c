bool checkPerfectNumber(int num){
    int r = 0;
    
    for(int i = 1; i <= num/2; ++i)
    {
        if(num % i == 0)
            r += i;
    }
    if(num == r)
        return true;
    return false;
}