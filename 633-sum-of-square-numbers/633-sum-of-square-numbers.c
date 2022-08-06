bool judgeSquareSum(int c){
    if(!c) return true;
    
    int a = 1,b;
    while(a <= sqrt(c)){
        b = sqrt(c - a*a);
        if(a*a + b*b == c)
            return true;
        a++;
    }
    return false;
}