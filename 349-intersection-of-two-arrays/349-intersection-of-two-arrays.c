int min(int x , int y)
{
    return (x < y ? x : y);
}

int* intersection(int* nums1, int nums1Size, int* nums2, int nums2Size, int* returnSize){
    int* ans = malloc(sizeof(int) * min(nums1Size,nums2Size));
    int j = 0;
    int visited[1001] = {0};
    
    for(int i = 0 ; i < nums1Size ; i++){
        visited[nums1[i]] = 1;
    }
    
    for(int i = 0 ; i < nums2Size ; i++){
        if(visited[nums2[i]] == 1){
            ans[j++] = nums2[i];
            visited[nums2[i]] = 0;
        }
    }
    
    *returnSize = j;
    return ans;
}