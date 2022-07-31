int cmpfunction (const void *a, const void *b) {
   return ( *(int*)a - *(int*)b );
}

bool canMakeArithmeticProgression(int* arr, int arrSize){
    qsort(arr, arrSize, sizeof(int), cmpfunction);
    int tmp;
    
    tmp = arr[1] - arr[0];   //2 <= arr.length <= 1000
    for(int i = 1; i < arrSize-1; i++){
        if(arr[i+1] - arr[i] != tmp)
            return false;
    }
    return true;
}