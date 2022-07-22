bool arrayStringsAreEqual(char ** word1, int word1Size, char ** word2, int word2Size){
    char *str1 = malloc(sizeof(char) * 1001);
    char *str2 = malloc(sizeof(char) * 1001);
    
    strcpy(str1,word1[0]);
    strcpy(str2,word2[0]);
    
    int i = 1;
    while(i < word1Size){
        strcat(str1,word1[i]);
        i++;
    }
    i = 1;
    while(i < word2Size){
        strcat(str2,word2[i]);
        i++;
    }
    return (!strcmp(str1, str2));
}