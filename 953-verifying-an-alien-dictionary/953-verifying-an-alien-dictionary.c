bool isAlienSorted(char ** words, int wordsSize, char * order){
    int dict[26] = {0};
    
    for(int i = 0; order[i]; i++)
        dict[order[i] - 'a'] = i;
    
    for(int i = 1; i < wordsSize; i++) {
        char *word1 = words[i-1];
        char *word2 = words[i];
       
        while (*word2 && *word1) {
            if (dict[*word2 - 'a'] > dict[*word1 - 'a'])
                break;
            else if (dict[*word2 - 'a'] < dict[*word1 - 'a'])
                return false;
            else {
                word2++;
                word1++;
            }
        }
        
        if (*word1 != NULL && *word2 == NULL)
            return false;
    }
    return true;
}