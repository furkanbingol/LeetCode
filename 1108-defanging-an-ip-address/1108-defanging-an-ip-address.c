char * defangIPaddr(char * address){
    char *p;
    int i = 0,j = 0;
    p = (char*)malloc(sizeof(char) * (strlen(address) + 7));
    
    while(address[i])
    {
        if(address[i] == '.')
        {
            p[j] = '[';
            p[j+1] = '.';
            p[j+2] = ']';
            j += 3;
        }
        else
        {
            p[j] = address[i];
            ++j;
        }
        ++i;
    }
    p[j] = '\0';
    return p;
}