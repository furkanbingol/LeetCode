int* twoOutOfThree(int* nums1, int nums1Size, int* nums2, int nums2Size, int* nums3, int nums3Size, int* returnSize){
    int *arr;
    int count[101] = {0};
    int distinct[101] = {0};
    int i = 0,j,k;
    
    arr = (int *)malloc(sizeof(int) * 101);
    
    j = 0;
    while(j < nums1Size)
    {
        if(count[nums1[j]] != 1)
            count[nums1[j]]++;
        j++;
    }
    
    j = 0;
    while(j < nums2Size)
    {
        if(count[nums2[j]] == 0)
        {
            count[nums2[j]]++;
            distinct[nums2[j]] = 1;
        }
        else if(count[nums2[j]] == 1 && distinct[nums2[j]] == 0)
            count[nums2[j]]++;
        j++;
    }
    
    memset(distinct, 0, 101 * sizeof(int));   //initalize with 0 again
    j = 0;
    while(j < nums3Size)
    {
        if(count[nums3[j]] == 0)
        {
            count[nums3[j]]++;
            distinct[nums3[j]] = 1;
        }
        else if(count[nums3[j]] == 1 && distinct[nums3[j]] == 0)
        {
            count[nums3[j]]++;
            distinct[nums3[j]] = 1;
        }
        else if(count[nums3[j]] == 2 && distinct[nums3[j]] == 0)
            count[nums3[j]]++;
        j++;
    }
    
    j = 0;
    k = 0;
    while(j < 101)
    {
        if(count[j] >= 2)
            arr[k++] = j;
        j++;
    }
    *returnSize = k;
    return arr;
}