char *my_strcpy(char *dest, char *src)
{
    int i = 0;
    while(src[i])
    {
        dest[i] = src[i];
        ++i;
    }
    dest[i] = '\0';
    return dest;
}

char * firstPalindrome(char ** words, int wordsSize){
    int i = 0,j,c;
    int l;
    char *p;
    
    while(i < wordsSize)
    {
        c = 0;
        l = strlen(words[i]);  //last index of each word
        for(j = 0; j < l/2; ++j)
        {
            if(words[i][j] != words[i][l-j-1])
            {
                c = 1;
                break;
            }
        }
        if(c == 0)
        {
            p = (char*)malloc(sizeof(char) * strlen(words[i]) + 1);
            my_strcpy(p,words[i]);
            return p;
        }
        ++i;
    }
    p = "";
    return p;
}