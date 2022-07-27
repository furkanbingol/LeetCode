int firstUniqChar(char * s){
    int count[26] = {0};
        
    for(int i = 0; s[i]; i++)
        count[s[i] - 'a']++;
    
    for(int i = 0; s[i]; i++){
        if(count[s[i] - 'a'] == 1)
            return i;
    }
    return -1;
}