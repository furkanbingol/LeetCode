char* my_strcpy(char *dest, char *src)
{
    int i = 0;
    
    while(src[i])
    {
        dest[i] = src[i];
        i++;
    }
    dest[i] = '\0';
    return (dest);
}

char * restoreString(char * s, int* indices, int indicesSize){
    int j = 0;
    char tmp;
    char k[128];
    my_strcpy(k,s);
    
    while (j < indicesSize)
    {
        tmp = k[j];
        k[j] = s[indices[j]];
        s[indices[j]] = tmp;
        j++;
    }
    return s;
}