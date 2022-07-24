char ** divideString(char * s, int k, char fill, int* returnSize){
    int i,count = 0,row = 0,col = 0;
    int len = (strlen(s) / k) + 1;
    char **arr = malloc(sizeof(char *) * len);
    
    for(i = 0; i < len; i++)
        arr[i] = malloc(sizeof(char) * (k+1));
    
    i = 0;
    while(i < strlen(s) + 1 && count <= k){
        if(count != 0 && count % k == 0){
            arr[row][col] = '\0';
            row++;
            col = 0;
            count = 0;
            i--;
        }
        else{
            if(s[i]){
                arr[row][col] = s[i];
                col++;
                count++;
            }
        }
        i++;
    }
    //filling
    while(count != 0 && count != k+1){
        if(count == k){
            arr[row][col] = '\0';
            row++;
        }
        else{
            arr[row][col] = fill;
            col++;
        }
        count++;
    }
    *returnSize = row; 
    return arr;
}