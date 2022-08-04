int isPrime(int n){
    if(n == 2) return 1;
    for(int i = 2; i <= n/2; i++){
        if(n % i == 0)
            return 0;
    }
    return 1;
}

bool isThree(int n){
    if(isPrime(n) || n == 1) 
        return false;
    
    int div = 2;  //1 and itself
    for(int i = 2; i <= n/2; i++){
        if(n % i == 0)
            div++;
    }
    if(div == 3)
        return true;
    return false;
}