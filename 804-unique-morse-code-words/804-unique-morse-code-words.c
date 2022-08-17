int isUnique(char **str, char *search, int index){
    int i = 0;
    
    if(!index) return 1;
    
    while(i < index){
        if(strcmp(str[i], search) == 0)
            return 0;
        i++;
    }
    return 1;
}

int uniqueMorseRepresentations(char ** words, int wordsSize){
    char morse[26][5] = {".-","-...","-.-.","-..",".","..-.","--.","....","..",".---" 
                         ,"-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-" 
                         ,"..-","...-",".--","-..-","-.--","--.."};
    char **arr = calloc(sizeof(char *) , wordsSize);
    int count = 0,i,j,k;
    
    for(i = 0; i < wordsSize; i++)
        arr[i] = calloc(sizeof(char) , 50);
    
    i = 0;
    k = 0;
    while(i < wordsSize){
        j = 0;
        while(words[i][j]){
            strcat(arr[k], morse[words[i][j] - 'a']);
            j++;
        }
        if(isUnique(arr, arr[k], k))
            count++;
        k++;
        i++;
    }
    
    return count;
}