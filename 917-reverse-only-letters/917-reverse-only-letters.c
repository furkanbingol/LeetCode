int isAlphabetic(char k){
    return ((k>=65 && k<=90) || (k>=97 && k<=122));
}

char * reverseOnlyLetters(char * s){
    int i = 0;
    int j = 0;
    char *k = malloc(sizeof(char) * strlen(s) + 1);
    
    while(s[i])
    {
        if(isAlphabetic(s[i]) == 1){
            k[j] = s[i];
            j++;
        }
        i++;
    }
    
    i = 0;
    j--;
    while(j >= 0)
    {
        if(isAlphabetic(s[i]) == 1){
            s[i] = k[j];
            j--;
        }
        i++;
    }
    return s;
}