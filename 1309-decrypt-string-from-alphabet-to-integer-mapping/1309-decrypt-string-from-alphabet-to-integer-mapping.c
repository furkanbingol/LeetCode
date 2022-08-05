char * freqAlphabets(char * s){
    int len = strlen(s);
    int i = 0,j = 0,index = 0,val;
    char *arr = malloc(sizeof(char) * len + 1);
    int *hashMark = calloc(sizeof(int) , (len/3));
    
    while(s[i]){
        if(s[i] == '#'){
            hashMark[j] = i;
            j++;
        }
        i++;
    }
    
    i = 0;
    j = 0;
    while(s[i]){
        if((j < len/3 && i+2 != hashMark[j]) || (j == len/3)){
            arr[index] = (s[i] - '1') + 'a';
        }
        else{
            val = 0;
            val = val*10 + (s[i] - '0');
            i++;
            val = val*10 + (s[i] - '0');
            i++;
            arr[index] = val + ('a' - 1);
            j++;
        }
        index++;
        i++;
    }
    arr[index] = '\0';
    return arr;
}