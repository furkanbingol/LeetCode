char * toLowerCase(char * s){
    int i = 0;
    
    while(s[i])
    {
        if(s[i] >= 65 && s[i] <= 90)
            s[i] = s[i] + 32;
        ++i;
    }
    return s;
}