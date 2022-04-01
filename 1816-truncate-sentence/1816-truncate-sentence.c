char * truncateSentence(char * s, int k){
    int i = 0;
    int c = 0;
    
    while(s[i])
    {
        if(s[i] == ' ')
            ++c;
        if(c == k)
        {
            s[i] = '\0';
            --i;
        }
        ++i;
    }
    return s;
}