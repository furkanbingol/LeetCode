int countAsterisks(char * s){
    int asterisks = 0;
    int vertical = 0;
    int i = 0;
    
    while(s[i])
    {
        if(s[i] == '|')
            vertical++;
        else if(vertical % 2 == 0)
        {
            if(s[i] == '*')
                asterisks++;
        }
        i++;
    }
    return asterisks;
}