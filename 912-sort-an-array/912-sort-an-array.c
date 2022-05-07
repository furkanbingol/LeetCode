void swap(int *a, int *b){
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

void MaxHeapify(int *a,int i,int n){
    int l = (i+1)*2-1;
    int r = (i+1)*2;
    int largest = i;
    
    if (l<n && a[l] > a[largest]){
        largest = l;
    }
    if(r<n && a[r] > a[largest]){
        largest = r;
    }
    if (largest != i)
    {
        swap(&a[i],&a[largest]);
        MaxHeapify(a,largest,n);
    }
}


int* sortArray(int* a, int numsSize, int* returnSize){
    int i;
    
    for(i = numsSize/2-1; i >= 0; i--){
        MaxHeapify(a,i,numsSize);
    }
    
    for(i = numsSize-1; i >= 0; i--){      //HEAP SORT - O(n*logn)
        swap(&a[0],&a[i]); 
        MaxHeapify(a,0,i);
    }
    *returnSize = numsSize;
    return a;
}

    /*
    SELECTION SORT - O(n^2)
    for(i = 0; i < numsSize-1; i++){
        min = i;
        for(j = i+1; j < numsSize; j++){
            if(nums[j] < nums[min])
                min = j;
        }
        if(min != i){
            int tmp;
            tmp = nums[i];
            nums[i] = nums[min];
            nums[min] = tmp;
        }
    }
    *returnSize = numsSize;
    return nums;
    */