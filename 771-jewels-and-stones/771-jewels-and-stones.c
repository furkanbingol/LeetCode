int numJewelsInStones(char * jewels, char * stones){
    int i,j;
    int count = 0;
    
    i = 0;
    while(stones[i])
    {
        j = 0;
        while(jewels[j])
        {
            if(stones[i] == jewels[j])
            {
                count++;
                break;
            }
            ++j;
        }
        ++i;
    }
    return count;
}