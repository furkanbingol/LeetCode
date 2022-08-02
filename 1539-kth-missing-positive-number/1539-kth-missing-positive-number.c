int findKthPositive(int* arr, int arrSize, int k){
    int* hash = (int*) calloc(2002, sizeof(int));
    
    for(int i = 0; i < arrSize; i++)
        hash[arr[i]]++;
    
    int cnt = 0, num = 1;
    while(cnt != k) {
        if(hash[num] == 0) 
            cnt++;
        num++;
    }
    free(hash);
    return num-1;
}