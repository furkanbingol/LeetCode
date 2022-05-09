char findTheDifference(char * s, char * t){
    int sum_S = 0;
    int sum_T = 0;
    int i = 0;
    
    while(t[i]){
        sum_T += t[i];
        if(s[i] != '\0')
            sum_S += s[i];
        i++;
    }
    return (char)(sum_T - sum_S);
}