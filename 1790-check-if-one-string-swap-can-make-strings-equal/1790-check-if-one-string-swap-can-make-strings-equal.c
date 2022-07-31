bool areAlmostEqual(char * s1, char * s2){
    if(!strcmp(s1,s2)) return true;
    
    int swap = 0,j;
    char tmp1,tmp2;
    
    for(int i = 0; s1[i]; i++){
        if(s1[i] != s2[i]){
            if(!swap){
                tmp1 = s1[i];
                tmp2 = s2[i];
            }
            else if(tmp2 != s1[i] || tmp1 != s2[i])
                return false;
            swap++;
            j = i;
        }
        if(swap > 2)
            return false;
    }
    if(swap == 2 && tmp1 == s2[j] && tmp2 == s1[j])
        return true;
    
    return false;
}