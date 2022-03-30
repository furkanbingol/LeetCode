int* decode(int* encoded, int encodedSize, int first, int* returnSize){
    int *arr;
    int i;
    arr = (int*)malloc(sizeof(int) * (encodedSize + 1));
    arr[0] = first;
    
    for(i = 1; i < encodedSize + 1; ++i)
    {
        arr[i] = encoded[i-1] ^ arr[i-1];
    }
    
    *returnSize = encodedSize + 1;
    return arr;
}