char ** commonChars(char ** words, int wordsSize, int* returnSize){
    int i,j,k,p;
    int common_val;
    char **common = malloc(sizeof(char*) * 101);
    
    for(i = 0; i < 101; i++){
        common[i] = malloc(sizeof(char) * 2);
    }
    
    i = 0;
    p = 0;
    while(i < strlen(words[0]))
    {
        j = 1;
        k = 0;
        common_val = 0;
        while(j < wordsSize)
        {
            k = 0;
            while(words[j][k] && (words[j][k] != words[0][i]))
                k++;
            if(words[j][k] != NULL){
                words[j][k] = '.';
                common_val++;
            }
            j++;
        }
        if(common_val == wordsSize - 1){
            common[p][0] = words[0][i];
            common[p][1] = '\0';
            p++;
        }
        i++;
    }
    
    *returnSize = p;
    return common;
}