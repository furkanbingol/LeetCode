void moveZeroes(int* nums, int numsSize){
    int i = 0;
    for (int j = 0; j < numsSize; j++) {
        if (nums[j] != 0) {
            nums[i] = nums[j];
            i++;
        }       
    }
    while (i < numsSize) {
        nums[i] = 0;
        i++;
    }
}
