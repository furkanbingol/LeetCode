bool checkIfExist(int* arr, int arrSize){
    int i,j;
    
    for(i = 0; i < arrSize-1; i++)
    {
        for(j = i+1; j < arrSize; j++)
        {
            if(arr[i] == 2 * arr[j] || arr[j] == 2 * arr[i])
                return true;
        }
    }
    return false;
}