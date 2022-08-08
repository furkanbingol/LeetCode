typedef struct {
    int *arr;
    int arrSize;
} NumArray;

NumArray* numArrayCreate(int* nums, int numsSize) {
    NumArray *obj = (NumArray*)malloc(sizeof(NumArray));
    obj->arr = (int*)malloc(sizeof(int) * numsSize);
    obj->arrSize = numsSize;
    
    for(int i = 0; i < numsSize; i++){
        obj->arr[i] = nums[i];
    }
    return obj;
}

int numArraySumRange(NumArray* obj, int left, int right) {  //inclusive left and right
    int sum = 0;
    
    while(right-left >= 0){
        sum += obj->arr[left];
        left++;
    }
    return sum;
}

void numArrayFree(NumArray* obj) {
    free(obj->arr);
    free(obj);
}

/**
 * Your NumArray struct will be instantiated and called as such:
 * NumArray* obj = numArrayCreate(nums, numsSize);
 * int param_1 = numArraySumRange(obj, left, right);
 
 * numArrayFree(obj);
*/