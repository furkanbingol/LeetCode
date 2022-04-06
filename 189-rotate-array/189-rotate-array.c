void rotate(int* nums, int numsSize, int k){
    int arr[numsSize];
    
    for(int i = 0; i < numsSize; i++)
        arr[(i+k) % numsSize] = nums[i];
    
    for(int i = 0; i<numsSize; i++)
        nums[i] = arr[i];
    return nums;
}