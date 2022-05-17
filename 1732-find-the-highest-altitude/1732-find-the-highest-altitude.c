int largestAltitude(int* gain, int gainSize){
    int *a = malloc(sizeof(int) * (gainSize+1));
    int i = 0,max = 0,sum = 0;
    
    a[0] = 0;
    while(i < gainSize)
    {
        sum += gain[i];
        a[i+1] = sum;
        if(sum > max)
            max = sum;
        i++;
    }
    return max;
}