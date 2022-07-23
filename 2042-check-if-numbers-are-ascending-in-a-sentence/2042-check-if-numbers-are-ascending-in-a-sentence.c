int isNumber(char k){
    return (k >= '0' && k <= '9');
}

bool areNumbersAscending(char * s){ 
    int val = 0,tmp;
    
    for(int i = 0; s[i]; i++)
    {
        if(isNumber(s[i]))
        {
            if(s[i+1] && isNumber(s[i+1]))  //numberOfDigits == 2
            {     
                tmp = val;
                val = 0;
                val = val*10 + (s[i] - '0');
                i++;
                val = val*10 + (s[i] - '0');
                if(val <= tmp)
                    return false;
            }
            else if(s[i] - '0' > val)        //numberOfDigits == 1
                val = s[i] - '0';
            else
                return false;
        }
    }
    return true;
}