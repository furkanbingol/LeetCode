int largestPerimeter(int* nums, int numsSize){
    //selection sort
    for(int i = 0; i < numsSize-1; i++){
        int min = i;
        for(int j = i+1; j < numsSize; j++){
            if(nums[j] < nums[min])
                min = j;
        }
        if(min != i){
            int tmp = nums[i];
            nums[i] = nums[min];
            nums[min] = tmp;
        }
    }
    
    for(int i = numsSize-1; i >= 2; i--){
        if(nums[i-2] + nums[i-1] > nums[i])
            return nums[i-2] + nums[i-1] + nums[i];
    }
    return 0;
}