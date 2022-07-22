bool areOccurrencesEqual(char * s){
    int freq[26] = {0};
    int i = 0,val;
    
    while(s[i]){
        freq[s[i] - 'a']++;
        i++;
    }
    val = freq[s[0] - 'a'];
    for(i = 0; i < 26; i++){
        if(freq[i] && freq[i] != val)
            return false;
    }
    return true;
}