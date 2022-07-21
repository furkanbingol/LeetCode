char * generateTheString(int n){
    char *res = (char *)malloc((n+1) * sizeof(char));
    
    if(n % 2 == 1)
        for(int i = 0; i < n; i++)
            res[i] = 'a';
    else{
        for(int i = 0; i < n-1; i++)
            res[i] = 'a';
        res[n-1] = 'b';
    }
    res[n] = '\0';
    return res;
}