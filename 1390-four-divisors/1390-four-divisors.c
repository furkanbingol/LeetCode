int sumFourDivisors(int* nums, int numsSize){
    int i,j;
    int sum = 0;
    int divisor;
    int answer = 0;
    
    for(i = 0; i < numsSize; i++){
        sum += nums[i];
        divisor = 1;
        for(j = 1; j <= (nums[i]/2); j++){
            if(nums[i] % j == 0){
                sum += j;
                divisor++;
            }
            if(divisor > 4)
                break;
        }
        if(divisor == 4)
            answer += sum;
        sum = 0;
    }
    
    return answer;
}