char toLower(char k)
{
    return ((k >= 'A' && k <= 'Z') ? k + 32 : k);
}

int whichContain(char k, char *letters0, char *letters1, char *letters2)
{
    int i = 0;
    
    while(letters0[i]){
        if(k == letters0[i])
            return 0;
        i++;
    }
    i = 0;
    while(letters1[i]){
        if(k == letters1[i])
            return 1;
        i++;
    }
    return 2;
}

char ** findWords(char ** words, int wordsSize, int* returnSize){
    char letters[3][11];
    int i,j,tmp,flag,index=0;
    char **valid;
    valid = (char **)malloc(sizeof(char *) * wordsSize);
    
    for(i = 0; i < wordsSize; i++){
        valid[i] = (char *)malloc(sizeof(char) * 101);
    }
    
    strcpy(letters[0],"qwertyuiop");
    strcpy(letters[1],"asdfghjkl");
    strcpy(letters[2],"zxcvbnm");
    
    i = 0;
    while(i < wordsSize){
        j = 0;
        while(words[i][j]){
            if(j == 0)
                tmp = whichContain(toLower(words[i][j]), &letters[0] , &letters[1], &letters[2]);
            else{
                flag = whichContain(toLower(words[i][j]), &letters[0] , &letters[1], &letters[2]);
                if(flag != tmp){
                    flag = -1;
                    break;
                }
            }
            j++;
        }
        if(flag != -1 || (strlen(words[i]) == 1))
            valid[index++] = words[i];
        i++;
    }
    *returnSize = index;
    return valid;
}