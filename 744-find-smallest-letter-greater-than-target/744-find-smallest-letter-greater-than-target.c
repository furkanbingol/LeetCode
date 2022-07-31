char nextGreatestLetter(char* letters, int lettersSize, char target){
    int l = 0, mid = 0, r = lettersSize-1;
    
    if(target >= letters[lettersSize-1])
        return letters[0];
    
    while(l <= r){
        mid = (l+r)/2;
        if(target == letters[mid] || target > letters[mid])
            l = mid + 1;
        else
            r = mid - 1;
    }
    return letters[l];
}