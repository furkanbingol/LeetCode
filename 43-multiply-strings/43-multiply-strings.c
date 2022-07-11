char * multiply(char * num1, char * num2)
{
    if( num1[0] == '0' || num2[0] == '0' ) 
        return "0";

    int len1 = strlen(num1);
    int len2 = strlen(num2);
    int resLen = len1 + len2 + 1;
    char *res = calloc(resLen, sizeof(char));
    
    for(int i = len1 - 1; i >= 0 ; i--)
    {
        for(int j = len2 - 1; j >= 0 ; j--)
        {
	        int ii = i + j + 1;  //max digit
            int r = (num1[i] - '0') * (num2[j] - '0'); 

   	        res[ii] += r % 10;  
	        res[ii - 1] += r / 10; 
	        r = res[ii];
	        if( r >= 10 )
	        {
                res[ii] = r % 10;
                res[ii - 1] += r / 10;
    	    }
        }
    }

    for(int i = 0; i < resLen - 1; i++) 
        res[i] += '0';

    if( res[0] == '0' ) 
        res++;
    return res;
}