bool uniqueOccurrences(int* arr, int arrSize){
    int values[2001]={0}, occurrencies[2001]={0}, i;
    
    for(i=0;i<arrSize;i++)
        values[arr[i]+1000]++;
    
    for(i=0;i<2001;i++){
        if(values[i]!=0)
            if(++occurrencies[values[i]]>1)
                return false;
    }
    return true;
}