int percentageLetter(char * s, char letter){
    int i = 0,perc = 0;
    
    while(s[i]){
        if(s[i] == letter) perc++;
        i++;
    }
    perc = (perc * 100) / i;   //i = length of s
    return perc;
}