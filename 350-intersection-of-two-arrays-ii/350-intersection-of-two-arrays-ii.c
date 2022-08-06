int* intersect(int* nums1, int nums1Size, int* nums2, int nums2Size, int* returnSize){
    int *data = calloc((nums1Size+nums2Size),sizeof(int));
    int *nums = calloc(10000,sizeof(int));
    
    int record = 0;
    for(int c = 0; c < nums1Size; c++)
        nums[nums1[c]]++;
    
    for(int c = 0; c < nums2Size; c++)
    {
        if(nums[nums2[c]] > 0)
        {
            data[record++] = nums2[c];
            nums[nums2[c]]--;
        }
    }
    
    *returnSize = record;
    free(nums);
    return data;
}