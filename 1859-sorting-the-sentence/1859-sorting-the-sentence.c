char * sortSentence(char * s){
    int i = 0,j = 0,k;
    char t = '1';
    char *m;
    
    m = (char*)malloc(sizeof(char) * strlen(s));

    while(s[i] != NULL)
    {
        if(s[i] == t)
        {
            k = i-1;
            while(k >= 0 && s[k] != 32)  //ascii; 32 = ' '
                k--;
            k++;
            while(s[k] != t)
            {
                m[j] = s[k];
                j++;
                k++;
            }
            m[j] = ' ';
            j++;
            t++;    //increment as ascii
            i = 0;
        }
        i++;
    }
    m[j-1] = '\0';
    return m;
}