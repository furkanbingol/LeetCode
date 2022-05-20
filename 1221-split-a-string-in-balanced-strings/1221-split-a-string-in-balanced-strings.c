int balancedStringSplit(char * s){
    int n = 0;
    int i = 0;
    int count = 0;
    
    while(s[i]){
        if(s[i] == 'R')
            n++;
        else
            n--;
        if(n == 0)
            count++;
        i++;
    }
    return count;
}