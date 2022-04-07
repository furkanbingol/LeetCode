int* twoSum(int* numbers, int numbersSize, int target, int* returnSize){
    int right = numbersSize - 1;
    int left = 0;
    int *k = (int*)malloc(sizeof(int) * 2);
    *returnSize = 2;
    
    k[0] = -1;
    while(k[0] == -1)
    {
        if(numbers[left] + numbers[right] > target)
            right--;
        else if(numbers[left] + numbers[right] < target)
            left++;
        else
        {
            k[0] = left + 1;
            k[1] = right + 1;
        }
    }
    return k; 
}