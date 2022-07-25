char repeatedCharacter(char * s){
    int res = 0,prev;
    for(int i = 0; s[i]; i++){
        prev = res;
        res = res ^ (1 << s[i]-'a');
        if(res < prev)
            return s[i];
    }
    return 'a';
}