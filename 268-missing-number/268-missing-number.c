int missingNumber(int* nums, int numsSize){
    int k = 0;
    int *a;
    
    a = (int*)calloc(sizeof(int) , numsSize+1);  //all elements are 0
    
    while(k < numsSize)
        a[nums[k++]] = 1;
    
    k = 0;
    while(k < numsSize+1)
    {
        if(a[k] == 0)
            return k;
        k++;
    }
    return k+1;
}