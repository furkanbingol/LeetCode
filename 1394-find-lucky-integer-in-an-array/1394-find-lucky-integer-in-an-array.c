int findLucky(int* arr, int arrSize){
    int freq[500] = {0};
    int maxLucky = -1;
    
    for(int i = 0; i < arrSize; ++i)
        freq[arr[i]]++;
    
    for(int i = 0; i < arrSize; ++i){
        if(arr[i] == freq[arr[i]]){
            if(arr[i] > maxLucky)
                maxLucky = arr[i];
        }
    }
    return maxLucky;
}