char * removeDuplicates(char * s){
    int len = strlen(s);
    int i;
    char *st = (char *)malloc(sizeof(char) * len);
    int t = -1;
    
    for (i=0; i < len; i++)
    {
        if (t == -1 || s[i] != st[t])
        {
            t++;
            st[t] = s[i];
            continue;
        }
        if (st[t] == s[i])
        {
            t--;
        }
        
    }
    st[t+1] = NULL; 
    return &st[0];
}