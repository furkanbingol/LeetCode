int singleNumber(int* nums, int numsSize){
    int r = nums[0];
    for (int i = 1; i < numsSize; i++)
        r = r ^ nums[i];
    return r;
}