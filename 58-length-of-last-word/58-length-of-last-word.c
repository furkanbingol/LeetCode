int lengthOfLastWord(char * s){
    int c = 0, len = strlen(s);
    
    while(len >= 0)
    {
        if(s[len-1] == ' ' || s[len-1] == '\t')
            len--;
        else
        {
            while((len-1 >= 0) && s[len-1] != ' ')
            {
                c++;
                len--;
            }
            return c;
        }
    }
    return 0;
}