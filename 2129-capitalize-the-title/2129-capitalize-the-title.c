int isLower(char k){
    return (k >= 'a' && k <= 'z');
}

char * capitalizeTitle(char * title){
    int i = strlen(title) - 1;
    int j = 0,tmp;
    int len;
    
    while(i >= 0){
        len = 0;
        while(i >= 0 && title[i] != 32){
            len++;
            i--;
            if(i == -1 && (len == 1 || len == 2)){
                if(!isLower(title[0]))
                    title[0] += 32;
                if(len == 2){
                    if(!isLower(title[1]))
                        title[1] += 32;
                }
            }
        }
        tmp = i+1;
        while(title[tmp] && title[tmp] != 32 && (len != 1)){
            if((title[tmp+2] && title[tmp+2] == 32) || title[tmp+2] == NULL){
                if(!isLower(title[tmp]))
                    title[tmp] += 32;
                if(!isLower(title[tmp+1]))
                    title[tmp+1] += 32;
                break;
            }
            else if(tmp == i+1 && isLower(title[tmp])){
                title[tmp] -= 32;
            }
            else{
                if(tmp != i+1 && !isLower(title[tmp])){
                    title[tmp] += 32;
                }
            }
            tmp++;
        }
        if(len == 1 && !isLower(title[i+1]))
            title[i+1] += 32;
        i--;
    }
    
    return title;
}