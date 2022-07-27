int countQuadruplets(int* nums, int numsSize){
    int count = 0;
    
    for(int i = 0; i < numsSize-3; i++){
        for(int j = i+1; j < numsSize-2; j++){
            for(int k = j+1; k < numsSize-1; k++){
                for(int x = k+1; x < numsSize; x++){
                    if((nums[i]+nums[j]+nums[k]) == nums[x])
                        ++count;
                }  
            }
        }
    }
    return count;
}
