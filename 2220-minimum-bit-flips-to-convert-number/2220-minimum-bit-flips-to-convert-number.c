int minBitFlips(int start, int goal){
    int flip = 0;
    int xor = start^goal;        
    while(xor){
        xor = xor & (xor-1);   //xor & (xor-1): will erase the last bit
        flip++;
    }
    return flip;
}