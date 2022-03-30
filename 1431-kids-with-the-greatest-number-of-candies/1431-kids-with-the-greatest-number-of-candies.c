bool* kidsWithCandies(int* candies, int candiesSize, int extraCandies, int* returnSize){
    bool *k;
    int i,max;
    
    k = (bool*)malloc(sizeof(bool) * candiesSize);
    max = candies[0];
    
    for(i = 1; i < candiesSize; ++i)
    {
        if(max < candies[i])
            max = candies[i];
    }
    for(i = 0; i < candiesSize; ++i)
    {
        if(candies[i] + extraCandies >= max)
            k[i] = true;
        else
            k[i] = false;
    }
    *returnSize = candiesSize;
    return k;
}