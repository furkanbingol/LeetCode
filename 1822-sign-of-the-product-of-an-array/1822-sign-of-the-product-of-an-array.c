int arraySign(int* nums, int numsSize){
    int count = 0;
    for(int i = 0; i < numsSize; i++){
        if(!nums[i]) return 0;
        else if(nums[i] < 0) count++;
    }
    return (count % 2 == 0 ? 1 : -1);
}