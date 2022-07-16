int* decompressRLElist(int* nums, int numsSize, int* returnSize){
    int *arr;
    int value,index = 0,len = 0,freq;
    
    for(int i = 0; i < numsSize; i++){
        if(i % 2 == 0)
            len += nums[i];
    }
    
    arr = (int *)malloc(sizeof(int) * len);
    
    for(int i = 0; i < numsSize; i++){
        if(i % 2 == 0)
            freq = nums[i];
        else{
            int counter = 0;
            while(counter < freq){
                arr[index++] = nums[i];
                counter++;
            }
        }
    }
    *returnSize = len;
    return arr;
}