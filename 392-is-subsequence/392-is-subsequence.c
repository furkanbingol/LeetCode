bool isSubsequence(char * s, char * t){
    int i,m=0;
    for(i = 0; t[i]; i++){
        if(s[m] == t[i])
            m++;
    }
    return m == strlen(s);
}