int maximumWealth(int** accounts, int accountsSize, int* accountsColSize){
    int richest = 0;
    int cur;
    
    for(int i = 0; i < accountsSize; ++i)
    {
        cur = 0;
        for(int j = 0; j < *accountsColSize; ++j)
        {
            cur += accounts[i][j];
        }
        if(cur > richest)
            richest = cur;
    }
    return richest;
}