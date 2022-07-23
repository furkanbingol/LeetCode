bool checkAlmostEquivalent(char * word1, char * word2){
    int hash[26] = {0};
    
    for(int i = 0; word1[i]; i++)
        hash[word1[i] - 'a']++;
    for(int i = 0; word1[i]; i++)
        hash[word2[i] - 'a']--;
    for(int i = 0; i < 26; i++){
        if(abs(hash[i]) > 3)
            return false;
    }
    return true;
}