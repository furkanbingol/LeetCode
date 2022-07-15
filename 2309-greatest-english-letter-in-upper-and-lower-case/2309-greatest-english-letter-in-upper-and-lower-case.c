char * greatestLetter(char * s){
    int upper[26] = {0};
    int lower[26] = {0};
    int i = 0;
    char *res;

    res = (char *)malloc(sizeof(char) * 2);

    while(s[i])
    {
        if(s[i] >= 'a' && s[i] <= 'z')
            lower[s[i] - 'a']++;
        else
            upper[s[i] - 'A']++;
        i++;
    }
    i = 25;
    while(i >= 0)  //greatest English letter('z' to 'a')
    {
        if(lower[i] && upper[i])
        {
            *res = i + 'A';
            res++;
            *res = '\0';
            res--;
            return res;
        }
            
        i--;
    }
    return "";
}