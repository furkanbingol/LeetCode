int countConsistentStrings(char * allowed, char ** words, int wordsSize){
    int i,j,k;
    int c = 0;
    
    i = 0;
    while(i < wordsSize)
    {
        j = 0;
        k = 0;
        while(allowed[j])
        {
            if(words[i][k] == NULL)
                break;
            else if(words[i][k] == allowed[j])
            {
                ++k;
                j = -1;
            }
            ++j;
        }
        if(strlen(words[i]) == k)
            c += 1;
        ++i;
    }
    return c;
}