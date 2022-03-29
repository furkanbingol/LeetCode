int mostWordsFound(char ** sentences, int sentencesSize){
    int i,j;
    int max = 0,tmp;
    
    for(i = 0; i < sentencesSize ; ++i)
    {
        j = 0;
        tmp = 1;
        while(sentences[i][j])
        {
            if(sentences[i][j] == ' ')
                tmp++;
            j++;
        }
        if(tmp > max)
            max = tmp;
    }
    return max;
}