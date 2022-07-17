int maxNumberOfBalloons(char * text){
    int arr[5] = {0};  //b,a,l,o,n
    int res = 0;
    
    for(int i = 0; text[i]; i++)
    {
        if     (text[i] == 'b') arr[0]++;
        else if(text[i] == 'a') arr[1]++;
        else if(text[i] == 'l') arr[2]++;
        else if(text[i] == 'o') arr[3]++;
        else if(text[i] == 'n') arr[4]++;
    }
    
    while(arr[0] > 0 && arr[1] > 0 &&
          arr[2] > 1 && arr[3] > 1 && arr[4] > 0)
    {
        arr[0]--;
        arr[1]--;
        arr[2] -= 2;
        arr[3] -= 2;
        arr[4]--;
        res++;
    }
    return res;
}