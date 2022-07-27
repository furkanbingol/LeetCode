int firstUniqChar(char * s){
    int count[26] = {0};
    int index[26] = {-1};
        
    for(int i = 0; s[i]; i++){
        count[s[i] - 'a']++;
        index[s[i] - 'a'] = i;
    }
    
    for(int i = 0; s[i]; i++){
        if(count[s[i] - 'a'] == 1)
            return index[s[i] - 'a'];
    }
    return -1;
}