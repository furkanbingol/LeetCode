bool digitCount(char * num){
    int arr[10] = {0};
    char *ptr = num;
    
    while(*ptr){
        arr[*ptr - '0']++;
        ptr++;
    }
    for(int i = 0; i < strlen(num); ++i){
        if((num[i] - '0') != arr[i])
            return false;
    }
    return true;
}