int myAtoi(char * s){
    long int res = 0;
    int sign = 1;
    int i = 0;
    
    while(s[i] == 32)   //in ASCII 32: ' '(space)
        i++;
    
    if(s[i] == '-'){
        sign *= -1;
        i++;
    }
    else if(s[i] == '+')
        i++;
    
    while(s[i] && (s[i] >= '0' && s[i] <= '9')){
        res = (res * 10) + s[i] - '0';
        if(res*sign > INT_MAX)    //overflow
            return INT_MAX;
        if(res*sign < INT_MIN)    //underflow
            return INT_MIN;
        i++;
    }
    return res * sign;
}