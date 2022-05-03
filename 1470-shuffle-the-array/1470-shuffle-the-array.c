int* shuffle(int* nums, int numsSize, int n, int* returnSize){
     *returnSize = numsSize;
    int* ans = (int*) malloc(numsSize * sizeof(int));
    int k=0;
    for(int i=0;i<numsSize;i++){
        if(i%2==0){
            ans[i]=nums[k++];
        }
        else{
            ans[i]=nums[n++];
        }
    }
    return ans;
}