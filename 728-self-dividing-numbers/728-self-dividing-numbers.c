int divide(int n){
    int i,j=n;
    while(n){
        i=n%10;
        n=n/10;
        
        if(i==0)
            return 0;
        if(i!=0){
            if(j%i)
                return 0;
        }
    }
    return 1;
}
int* selfDividingNumbers(int left, int right, int* returnSize){
    int i,j=0,*arr;
    
    arr=(int*)malloc(1000*sizeof(int));
    for(i=left;i<=right;i++)
    {
        if(divide(i)){
            arr[j]=i;
            j++;
        }
    }
    *returnSize=j;
    return arr;
}