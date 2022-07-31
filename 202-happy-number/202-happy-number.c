int sumOfSquaresOfDigits(int x){
    int sum = 0;
    while(x > 0){
        sum += (x%10) * (x%10);
        x /= 10;
    }
    return sum;
}

bool isHappy(int n){
    int result = n;    
    
    while(result != 1 && result != 4)
        result = sumOfSquaresOfDigits(result);     

    if(result == 1)    
            return true;  
 
    else if (result == 4)   //Unhappy number ends in a cycle of repeating numbers which contains 4   
         return false;   

    return false; 
}