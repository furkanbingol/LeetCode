int xorOperation(int n, int start){
    int r = 0;
    int *nums;
    nums = (int*)malloc(sizeof(int) * n);
    for(int i = 0; i < n; ++i)
    {
        nums[i] = start + 2*i;
        r = r ^ nums[i];
    }
    return r;
}