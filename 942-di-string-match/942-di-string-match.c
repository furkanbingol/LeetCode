int* diStringMatch(char * s, int* returnSize){
    int i,j = 0,I = 0, D = strlen(s);
    int *k;
    *returnSize = strlen(s) + 1;
    k = (int*)malloc(sizeof(int) * (*returnSize));
    
    while(s[i])
    {
        if(s[i] == 'I')
            k[j++] = I++;
        else
            k[j++] = D--;
        ++i;
    }
    k[j] = I++;
    return k;
}