int countPrefixes(char ** words, int wordsSize, char * s){
    int i,j;
    int count =0, flag;
    
    for(i = 0; i < wordsSize; i++){   
        flag = 1;
        char *a = words[i]; 
        for(j = 0; a[j] != NULL; j++){
            if(s[j] == NULL || s[j] != a[j]){
               flag = 0;
               break;
            }
        }
        if(flag == 1) count++;
    }
    return count;    
}