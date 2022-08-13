int numOfStrings(char ** patterns, int patternsSize, char * word){
    int i = 0,j,same;
    int count = 0;
    
    while(i < patternsSize)
    {
        j = 0;
        same = 0;
        char *tmp = patterns[i];
        while(*tmp && word[j] && strlen(tmp) <= strlen(word))
        {
            if(*tmp == word[j]){
                tmp++;
                same++;
            }
            else{
                if(same){
                    tmp = patterns[i];
                    j -= same;
                }
                same = 0;
            }
            j++;
        }
        if(*tmp == '\0')
            count++;
        i++;
    }
    
    return count;
}