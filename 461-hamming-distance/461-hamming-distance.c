int hammingDistance(int x, int y){
    int count = 0;
    int xor = x^y;
    
    while(xor != 0)
    {
        if((1 & xor) != 0)
            count++;	
        xor = xor >> 1;
    }
    return count;
}