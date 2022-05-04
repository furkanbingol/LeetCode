int canBeTypedWords(char * text, char * brokenLetters){
    int i = 0;
    int j;
    int c = 0;
    int err = 0;
    
    while(text[i]){
        if(err == 0)
        {
            j = 0;
            while(err == 0 && brokenLetters[j])
            {
                if(text[i] == brokenLetters[j])
                    err = 1;
                ++j;
            }
        }
        if(text[i] == ' ')
            err = 0;
        if((text[i+1] == ' ' && err == 0) || (text[i+1] == '\0' && err == 0))
            c++;
        ++i;
    }
    return c;
}