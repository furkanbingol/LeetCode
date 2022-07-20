int* intersection(int** nums, int numsSize, int* numsColSize, int* returnSize){
    int hash[1001] = {0};
    int *res = malloc(sizeof(int) * 1001);
    int i,j;
    
    for (i = 0; i < numsSize; i++)
        for (j = 0; j < numsColSize[i]; j++)
            hash[nums[i][j]]++;
    
    j = 0;
    for (i = 0; i < 1001; i++){
        if (hash[i] == numsSize)
            res[j++] = i;
    }
    *returnSize = j;
    return res;
}