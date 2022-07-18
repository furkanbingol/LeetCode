bool threeConsecutiveOdds(int* arr, int arrSize){
    for(int i = 0; i < arrSize; i++){
        if(arr[i] % 2 == 1){
            if(i+1 < arrSize && arr[i+1] % 2 == 1){
                if(i+2 < arrSize && arr[i+2] % 2 == 1){
                    return true;
                }
            }
        }
    }
    return false;
}