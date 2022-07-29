int peakIndexInMountainArray(int* arr, int arrSize){
    int l = 0;
    int r = arrSize-1;
    int mid = 0;
    
    while(l <= r){
        mid = (l+r)/2;
        if(arr[mid] > arr[mid+1] && arr[mid-1] < arr[mid])
            return mid;
        else if(arr[mid] < arr[mid+1])
            l = mid+1;
        else if(arr[mid-1] > arr[mid])
            r = mid-1;
    }
    return mid;
}