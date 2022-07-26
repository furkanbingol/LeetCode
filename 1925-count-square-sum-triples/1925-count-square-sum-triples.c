int countTriples(int n){
    int count = 0;
    
    for(int i = 1; i <= n-2; i++){
        for(int j = i; j <= n-1; j++){
            for(int k = j; k <= n; k++){
                if(pow(i,2) + pow(j,2) == pow(k,2))
                    count++;
            }
        }
    }
    return count*2;
}