int getSum(int a, int b){
    unsigned int sum = (unsigned int)a ^ (unsigned int)b;
    unsigned int carry = ((unsigned int)a & (unsigned int)b) << 1;
    while(carry != 0)
    {
        unsigned int temp = sum ^ carry;
        carry = (sum & carry) << 1;
        sum = temp;
    }
    return (int)sum;
}