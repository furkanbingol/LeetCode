bool checkIfPangram(char * sentence){
    int a[26] = {0};
    int i = 0;
    
    while(sentence[i])
    {
        a[sentence[i] - 97] = 1;  //97 : a (ASCII)
        ++i;
    }
    for(i= 0; i < 26; ++i)
    {
        if(a[i] == 0)
            return false;
    }
    return true;
}