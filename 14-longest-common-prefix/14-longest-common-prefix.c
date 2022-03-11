#define LIM 210

int my_strcmp(char *a, char *b)
{
    int i = 0;
    
    while (a[i] && b[i] && (a[i] == b[i]))
        i++;
    return (i);
}

char* my_strncpy(char *dest, char *src,int n)
{
    int i = 0;
    
    if(n == 0)
    {
        dest = "";
        return (dest);
    }
    while (n != 0)
    {
        dest[i] = src[i];
        n--;
        i++;
    }
    dest[i] = '\0';
    return (dest);
}

char * longestCommonPrefix(char ** strs, int strsSize){
    char *c;
    int min = LIM;
    int i,j;
    
    if (strsSize == 1)
        return strs[0];
    
    c = (char*)malloc(sizeof(char) * LIM);
    for(i = 0; i < strsSize - 1; i++)
    {
        j = i + 1;
        for (; j < strsSize; j++)
        {
            if (my_strcmp(strs[i], strs[j]) < min)
                min = my_strcmp(strs[i], strs[j]);
        }
    }
    if (min == LIM)
    {
        c = "";
        return (c);
    }
    c = my_strncpy(c,strs[0],min);
    return (c);
}