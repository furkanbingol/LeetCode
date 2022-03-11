int romanToInt(char * s){
    int r = 0;
    int i = 0;
    
    while (s[i])
    {
        if(s[i] == 'I' && s[i+1] && (s[i+1] == 'V' || s[i+1] == 'X'))
        {
            if(s[i+1] == 'V')
                r += 4;
            else
                r += 9;
            i++;
        }
        else if(s[i] == 'X' && s[i+1] && (s[i+1] == 'L' || s[i+1] == 'C'))
        {
            if(s[i+1] == 'L')
                r += 40;
            else
                r += 90;
            i++;
        }
        else if(s[i] == 'C' && s[i+1] && (s[i+1] == 'D' || s[i+1] == 'M'))
        {
            if(s[i+1] == 'D')
                r += 400;
            else
                r += 900;
            i++;
        }
        else if(s[i] == 'I')
            r += 1;
        else if(s[i] == 'V')
            r += 5;
        else if(s[i] == 'X')
            r += 10;
        else if(s[i] == 'C')
            r += 100;
        else if(s[i] == 'L')
            r += 50;
        else if(s[i] == 'D')
            r += 500;
        else if(s[i] == 'M')
            r += 1000;
        i++;
    }    
    return (r);
}