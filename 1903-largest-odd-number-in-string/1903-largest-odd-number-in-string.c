char * largestOddNumber(char * num){
    int i = strlen(num);
    
    while(i > 0){
        if(num[i-1] % 2 == 1)
            return num;
        num[i - 1] = '\0';
        i--;
    }
    return "";
}