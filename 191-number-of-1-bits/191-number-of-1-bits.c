int hammingWeight(uint32_t n) {
    int total = 0;
    while(n != 0){
        if(n % 2 == 1) total++;
        n = n >> 1;   //right shifting
    }
    return total;
}