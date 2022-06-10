bool isMonotonic(int* nums, int numsSize){
    int increaseSum = 1;
    int decreaseSum = 1;
    for(int i=0; i<numsSize-1; i++){
        if(nums[i] <= nums[i+1]) increaseSum += 1;
        if(nums[i] >= nums[i+1]) decreaseSum += 1;
    }
    return increaseSum==numsSize || decreaseSum==numsSize;
}