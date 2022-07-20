int isValid(char *main, char *other){
    int i = 0,j,k;
    
    while(main[i]){
        j = 0;
        k = i;
        while(main[k] && other[j] && main[k] == other[j]){
            k++;
            j++;
        }
        if(other[j] == '\0')
            return 1;
        i++;
    }
    return 0;
}

int isUnique(char **arr,int len,char *str){
    int i = 0;
    
    while(i < len){
        if(strcmp(arr[i],str) == 0)
            return 0;
        i++;
    }
    return 1;
}

char ** stringMatching(char ** words, int wordsSize, int* returnSize){
    int i,j,index = 0;;
    char **arr;
    arr = (char **)malloc(sizeof(char *) * (wordsSize-1));
    
    for(i = 0; i < wordsSize-1; i++)
        arr[i] = (char *)malloc(sizeof(char) * 31);
    
    i = 0;
    while(i < wordsSize){
        j = 0;
        while(j < wordsSize){
            while(j < wordsSize && strlen(words[i]) <= strlen(words[j]))
                j++;
            if(j < wordsSize && isValid(words[i],words[j])){
                if(index != 0){
                    if(isUnique(arr,index,words[j]))
                        arr[index++] = words[j];       
                }
                else
                    arr[index++] = words[j];
            }
            j++;
        }
        i++;
    }
    *returnSize = index;
    return arr;
}