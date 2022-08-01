int* nextGreaterElement(int* nums1, int nums1Size, int* nums2, int nums2Size, int* returnSize){
    if(nums1Size == 1 && nums2Size == 1){
        int *arr = malloc(sizeof(int) * 1);
        arr[0] = -1;
        *returnSize = 1;
        return arr;
    }
    int *ans = malloc(sizeof(int) * nums1Size);
    int *greater = malloc(sizeof(int) * nums2Size);
    memset(greater, -1, sizeof(int) * nums2Size);    //initialize with -1
    *returnSize = nums1Size;
    int index = 0;
    
    for(int i = 0; i < nums2Size-1; i++){
        for(int j = i+1; j < nums2Size; j++){
            if(nums2[j] > nums2[i]){
                greater[i] = nums2[j];   
                break;
            }
        }
    }
    
    for(int i = 0; i < nums1Size; i++){
        for(int j = 0; j < nums2Size; j++){
            if(nums1[i] == nums2[j])
                ans[index++] = greater[j];
        }
    }
    return ans;
}