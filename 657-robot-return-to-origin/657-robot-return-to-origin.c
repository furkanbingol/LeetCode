bool judgeCircle(char * moves){
    int arr[4] = {0};  //0='U', 1='D', 2='L', 3='R'
    int i = 0;
    int len = strlen(moves);
    
    while(moves[i])
    {
        if     (moves[i] == 'U') arr[0]++;
        else if(moves[i] == 'D') arr[1]++;
        else if(moves[i] == 'L') arr[2]++;
        else if(moves[i] == 'R') arr[3]++;
        i++;
        if(abs(arr[0] - arr[1]) > (len - i))
            return false;
        if(abs(arr[2] - arr[3]) > (len - i))
            return false;
    }
    return true;
}