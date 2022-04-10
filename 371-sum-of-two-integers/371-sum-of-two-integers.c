int getSum(int a, int b){
    int ans = 0;
    unsigned char abit, bbit, i, carry;
    long sum;
    
    for (i = 0, carry = 0; i < 32; ++i) {
        abit = a & 1;
        bbit = b & 1;
        sum = carry ^ abit ^ bbit;
        
        ans |= (sum << i);
        carry = abit & bbit | (carry & (abit ^ bbit));
        
        a >>= 1;
        b >>= 1;
    }
    
    return ans;
}