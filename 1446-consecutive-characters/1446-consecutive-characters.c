int maxPower(char * s){
    int max = 1;
    int tmp = 1;
    int i = 0;
    
    while(s[i])
    {
        if(s[i+1] && s[i] == s[i+1])
            tmp++;
        else{
            if(tmp > max)
                max = tmp;
            tmp = 1;
        }
        i++;
    }
    return max;
}