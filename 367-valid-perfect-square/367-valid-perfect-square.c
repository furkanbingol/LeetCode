bool isPerfectSquare(int num){
    if(num == 1) return true;
    
    for(int i = 2; i < 46341 && (i*i <= num); i++){
        if(num % i == 0){
            int tmp = num;
            int j = i;
            while(tmp % j == 0) 
                tmp /= j;
            if(tmp == 1) 
                return true;
        }
    }
    return false;
}