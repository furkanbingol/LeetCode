char * interpret(char * command){
    char *k = (char*)malloc(sizeof(char)*strlen(command)+1);
    int i = 0,j = 0;
    
    while(command[i])
    {
        if(command[i] == 'G')
        {
            k[j] = 'G';
            ++i; 
            ++j;
        }
        else if(command[i] == '(' && command[i+1] == ')')
        {
            k[j] = 'o';
            i += 2; 
            ++j;
        }
        else if(command[i] == '(' && command[i+1] == 'a')
        {
            k[j] = 'a';
            k[j+1] = 'l';
            i += 4; 
            j += 2;
        }
    }
    k[j] = '\0';
    return k;
}