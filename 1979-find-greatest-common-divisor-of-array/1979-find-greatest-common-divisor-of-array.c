int findGCD(int* nums, int numsSize){
    int min = nums[0];
    int max = nums[0];
    int gcd = 1;
    
    for(int i = 1;i < numsSize; i++){
        if(nums[i] < min)
            min = nums[i];
        if(nums[i] > max)
            max = nums[i];
    }
    
    for(int i = 2; i <= min; i++){
        if(max % i == 0 && min % i == 0)
            gcd = i;
    }
    
    return gcd;
}