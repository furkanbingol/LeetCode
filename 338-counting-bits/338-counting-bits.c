int* countBits(int n, int* returnSize){
    int count,tmp;
    int *ans;
    ans = (int *)malloc(sizeof(int) * (n+1));
    *returnSize = n+1;
    
    while(n >= 0)
    {
        count = 0;
        tmp = n;
        while(tmp > 0)
        {
            if((tmp & 1) != 0)
                count++;
            tmp >>= 1;
        }
        ans[n] = count;
        n--;
    }
    return ans;
}
