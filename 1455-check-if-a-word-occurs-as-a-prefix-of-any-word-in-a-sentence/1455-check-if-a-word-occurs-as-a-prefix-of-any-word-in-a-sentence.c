int isPrefixOfWord(char * sentence, char * searchWord){
    int space = 0;
    
    for(int i = 0; sentence[i]; i++){
        if(sentence[i] == ' ')
            space++;
        int j = 0;
        if(!i || (sentence[i] == ' ' && sentence[i+1] == searchWord[j])){
            if(!i){
                while(sentence[i] && sentence[i] == searchWord[j]){
                    i++;
                    j++;
                }
                if(sentence[i] == ' ' && searchWord[j])
                    i--;
            }
            else{
                while(sentence[i+1] && sentence[i+1] == searchWord[j]){
                    i++;
                    j++;
                }   
            }
            if(searchWord[j] == '\0') 
                return space+1;
        }
    }
    return -1;
}