bool isAnagram(char * s, char * t){
    int alpha[26] = {0};
    int i = 0;
    
    if(strlen(s) != strlen(t))
        return false;
    
    while(s[i])
    {
        alpha[s[i] - 97]++;
        i++;
    }
    i = 0;
    while(t[i])
    {
        alpha[t[i] - 97]--;
        i++;
    }
    i = 0;
    while(i < 26)
    {
        if(alpha[i] != 0)
            return false;
        i++;
    }
    return true;
}