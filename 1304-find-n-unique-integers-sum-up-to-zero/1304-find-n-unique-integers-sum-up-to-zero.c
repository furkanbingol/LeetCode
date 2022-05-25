int* sumZero(int n, int* returnSize){
    int *a = malloc(sizeof(int) * n);
    *returnSize = n;
    
    if(n % 2 == 1)
    {
        int j = -2;
        for(int i = 0; i < n; i++){
            if(i < n/2) a[i] = (-1)*(n/2) + i;
            else if(i == n/2) a[i] = 0;
            else{
                a[i] = (-1)*a[i+j];
                j -= 2;
            }        
        }
    }
    else
    {
        int j = -1;
        for(int i = 0; i < n; i++){
            if(i < n/2) a[i] = (-1)*(n/2) + i;
            else{
                a[i] = (-1) * a[i+j];
                j -= 2;
            } 
        }
    }
    return a;
}