char * reversePrefix(char * word, char ch){
    int i = 0, j = 0, len;
    char tmp;
    
    while(word[i])
    {
        if(word[i] == ch)
        {
            len = i;
            while(i > len/2)
            {
                tmp = word[j];
                word[j] = word[i];
                word[i] = tmp;
                i--; 
                j++;
            }
            return word;
        }
        ++i;
    }
    return word;
}