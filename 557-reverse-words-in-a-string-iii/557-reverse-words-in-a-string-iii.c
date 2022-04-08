char * reverseWords(char * s){
    int i = 0,j = 0,tmp;
    char *k;
    k = (char*)malloc(sizeof(char) * strlen(s) + 1);

    while(s[i])
    {
        if(s[i] == ' ')
        {
            tmp = i;
            i--;
            while(i >= 0 && s[i] != ' ')
            {
                k[j] = s[i];
                j++;
                i--;
            }
            k[j++] = ' ';
            i = tmp;
        }
        ++i;
    }
    
    i = 0;
    while(j < strlen(s))  //for the last word
    {
        k[j] = s[strlen(s)-1-i];
        ++j;
        ++i;
    }
    k[j] = '\0';
    return k;
}