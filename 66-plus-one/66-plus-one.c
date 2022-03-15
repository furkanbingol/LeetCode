int* plusOne(int* digits, int digitsSize, int* returnSize){
    int i = 0, j = digitsSize - 1;
    *returnSize = digitsSize;
    
    for(;i < digitsSize; i++)
    {
        if(digits[i] != 9)
            break;
    }
    if (i == digitsSize)
    {
        *returnSize = digitsSize+1;
        digits = (int*)malloc(sizeof(int) * (digitsSize+1));
        digits[0] = 1;
        for(i = 1; i < (*returnSize);i++)
            digits[i] = 0;
        return (digits);
    }
    if (digits[j] != 9) //last index
    {
        digits[j]++;
        return (digits);
    }
    else
    {
        if(digitsSize == 1)
        {
            *returnSize = 2;
            digits = (int*)malloc(sizeof(int) * (digitsSize+1));
            digits[0] = 1;
            digits[1] = 0;
            return (digits);
        }
        else
        {
            while (digits[j] == 9)
            {
                digits[j] = 0;
                j--;
            }
            if(j != 0)
            {
                digits[j]++;
                return (digits);
            }
            digits[0]++;
            return (digits);
        }
    }
}