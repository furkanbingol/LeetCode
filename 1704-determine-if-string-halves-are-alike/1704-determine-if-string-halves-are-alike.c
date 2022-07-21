int isInclude(char *vowels, char ch){
    for(int i = 0; i < 10; i++){
        if(vowels[i] == ch)
            return 1;
    }
    return 0;
}
    
bool halvesAreAlike(char * s){
    char vowels[10] = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
    int len = strlen(s), i = 0;
    int count = 0;
    
    while(s[i])
    {
        if(i < len/2)
        {
            if(isInclude(vowels,s[i]))
                count++;
        }
        else
        {
            if(isInclude(vowels,s[i]))
                count--;
        }
        i++;
    }
    return (count == 0 ? true : false);
}