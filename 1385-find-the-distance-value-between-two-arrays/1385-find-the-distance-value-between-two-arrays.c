int findTheDistanceValue(int* arr1, int arr1Size, int* arr2, int arr2Size, int d){
    int j,flag,result = 0;
    
    for(int i = 0; i < arr1Size; i++){
        flag = 1;
        j = 0;
        while(j < arr2Size && flag){
            if(abs(arr1[i] - arr2[j]) <= d)
                flag = 0;
            j++;
        }
        if(flag) 
            ++result;
    }
    return result;
}