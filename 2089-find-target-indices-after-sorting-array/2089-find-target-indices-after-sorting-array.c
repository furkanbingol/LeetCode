void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}
  
void heapify(int arr[], int n, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;
  
    if (left < n && arr[left] > arr[largest])
      largest = left;
  
    if (right < n && arr[right] > arr[largest])
      largest = right;
  
    if (largest != i) {
      swap(&arr[i], &arr[largest]);
      heapify(arr, n, largest);
    }
}
  
void heapSort(int arr[], int n) {
    // Build max heap
    for (int i = n / 2 - 1; i >= 0; i--)
      heapify(arr, n, i);
  
    // Heap sort
    for (int i = n - 1; i >= 0; i--) {
      swap(&arr[0], &arr[i]);
      heapify(arr, i, 0);
    }
}

int* targetIndices(int* nums, int numsSize, int target, int* returnSize){
    int *arr;
    int j = 0;
    arr = (int *)malloc(sizeof(int) * numsSize);
    
    heapSort(nums,numsSize);
    
    for(int i = 0; i < numsSize; i++){
        if(nums[i] == target)
            arr[j++] = i;
    }
    arr = realloc(arr, j * sizeof(int));
    *returnSize = j;
    return arr;
}