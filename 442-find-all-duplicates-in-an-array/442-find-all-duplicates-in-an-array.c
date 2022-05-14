int* findDuplicates(int* nums, int numsSize, int* returnSize){
    int* r = calloc(numsSize + 1, sizeof(int));
    *returnSize = 0;
    
    for(int i=0;i<numsSize;i++){
        r[nums[i]]++;
        if(r[nums[i]]>1)
            nums[(*returnSize)++]=nums[i];
    }
    return nums;
}