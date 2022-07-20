int* shortestToChar(char * s, char c, int* returnSize){
    int len = strlen(s), k = 0, min;
    int index[len];
    int *shortest = (int *)malloc(sizeof(int) * len);
    *returnSize = len;
    
    for(int i = 0; i < len; i++){
        if(s[i] == c)
            index[k++] = i;
    }
    
    for(int i = 0; i < len; i++){
        min = INT_MAX;
        for(int j = 0; j < k; j++){
            if(abs(i - index[j]) < min)
                min = abs(i - index[j]);
        }
        shortest[i] = min;
    }
    return shortest;
}