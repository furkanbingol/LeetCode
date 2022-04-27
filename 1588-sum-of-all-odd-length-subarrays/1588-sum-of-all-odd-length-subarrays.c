int sumOddLengthSubarrays(int* arr, int arrSize){
    int ans = 0;
    
    for(int i = 0; i < arrSize; i++){
        int sum = 0 , len = 0;
        for(int j = i; j < arrSize; j++){
            len++;
            sum += arr[j];
            if(len % 2 == 1) //odd 
                ans += sum;
         }
    }
    return ans;
}