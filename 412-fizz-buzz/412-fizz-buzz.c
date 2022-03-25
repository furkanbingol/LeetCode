char ** fizzBuzz(int n, int* returnSize){
    char **s;
    char *k;
    *returnSize = n;
    s = (char**)malloc(sizeof(char*)*n);
    
    for(int i = 1; i <= n; ++i)
    {
        s[i-1] = (char*)malloc(sizeof(char)*9);
        if(i % 3 == 0 && i % 5 == 0)
            strcpy(s[i-1],"FizzBuzz");
        else if(i % 3 == 0)
            strcpy(s[i-1],"Fizz");
        else if(i % 5 == 0)
            strcpy(s[i-1],"Buzz");
        else
            sprintf(s[i-1], "%d", i);
    }
    return s;
}