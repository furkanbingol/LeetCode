bool checkString(char * s){
    int i = 0, pos_a = -1, pos_b = -1;
    
    while(s[i]){
        if(s[i] == 'a')  //max position for a
            pos_a = i;
        else if(s[i] == 'b' && pos_b == -1)  //min position for b
            pos_b = i;
        i++;
    }
    return (pos_b > pos_a || pos_b == -1);   
}