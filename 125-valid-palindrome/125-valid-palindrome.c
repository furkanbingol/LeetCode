int isUpper(char ch)
{
    return (ch >= 'A' && ch <= 'Z');
}

int isAlphaNumeric(char ch)
{
    return ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')
           ||(ch >= '0' && ch <= '9'));
}

int recursivePalindrome(char *s,int start, int end)
{
    if(start >= end)
        return 1;
    else if(s[start] == s[end])
        return recursivePalindrome(s,start+1,end-1);
    return 0;
}

bool isPalindrome(char * s){
    int result;
    char *tmp;
    int i = 0,j = 0;
    tmp = (char *)malloc(sizeof(char) * strlen(s) + 1);
    
    if(s[0] == ' ' && s[1] == '\0') return true;
    
    while(s[i])
    {
        if(isAlphaNumeric(s[i]))
        {
            if(isUpper(s[i]))
                tmp[j] = s[i] + 32;
            else
                tmp[j] = s[i];
            j++;
        }
        i++;
    }
    tmp[j] = '\0';
    int start = 0, end = j-1;
    result = recursivePalindrome(tmp,start,end);
    return (result == 1 ? true : false);
}