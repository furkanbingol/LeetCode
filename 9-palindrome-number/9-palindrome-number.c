bool isPalindrome(int x){
    int tmp1 = x;
    long tmp2 = 0;
    
    if (x < 0)
        return false;
    else
    {
        while (tmp1 > 0)
        {
            tmp2 = tmp2 * 10 + (tmp1 % 10);
            tmp1 /= 10;
        }
        if (tmp2 == x)
            return true;
        else
            return false;
    }
}