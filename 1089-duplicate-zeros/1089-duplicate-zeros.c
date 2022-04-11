void duplicateZeros(int* arr, int arrSize){
    int k;
    for(int i = 0; i < arrSize; ++i)
    {
        if(arr[i] == 0)
        {
            k = arrSize - 1;
            while(k > i)
            {
                arr[k] = arr[k-1];
                --k;
            }
            ++i;
        }
    }
}