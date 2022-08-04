char * mergeAlternately(char * word1, char * word2){
    int l1 = strlen(word1);
    int l2 = strlen(word2);
    int i = 0,j = 0;
    char *merged = malloc(sizeof(char) * (l1+l2) + 1);
    
    while(word1[i] && word2[i]){
        merged[j] = word1[i];
        merged[j+1] = word2[i];
        i++;
        j += 2;
    }
    
    if(word1[i]){
        while(word1[i])
            merged[j++] = word1[i++];
    }
    else if(word2[i]){
        while(word2[i])
            merged[j++] = word2[i++];
    }
    
    merged[j] = '\0';
    return merged;
}