int countPairs(int* nums, int numsSize, int k){
    int count = 0;
    
    for(int i = 0; i < numsSize-1; i++){
        for(int j = i+1; j < numsSize; j++){
            if((nums[i] == nums[j]) && (i * j) % k == 0)
                count++;
        }
    }
    return count;
}