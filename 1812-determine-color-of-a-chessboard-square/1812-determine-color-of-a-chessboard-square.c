bool squareIsWhite(char * coordinates){
    int diff;
    diff = coordinates[0] - 'a';
    
    if(diff % 2 == 0){
        if(coordinates[1] % 2 == 0) return true;
        else return false;
    }
    else
        if(coordinates[1] % 2 == 0) return false;
    return true;;
}