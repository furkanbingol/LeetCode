int strStr(char * haystack, char * needle){
    int i,j;
    int m,n;
    if (needle == "")
        return 0;
    m = strlen(haystack);
    n = strlen(needle);
    if (m < n)
        return -1;
    
    for(i = 0; i <= m-n; ++i)
    {
        for(j = 0; j < n; ++j)
        {
            if(haystack[i+j] != needle[j])
                break;
        }
        if (j == n)
            return i;
    }
    return -1;
}