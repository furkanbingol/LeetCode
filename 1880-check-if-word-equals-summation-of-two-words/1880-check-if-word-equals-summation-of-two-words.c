#include <stdlib.h> //for atoi() function

void findDigitArray(char *arr, char *tmp){
    int i = 0;
    int j = 0;
    
    while(arr[i]){
        tmp[j] = (arr[i] - 97) + '0';   //in ASCII 97: 'a'
        i++;
        j++;
    }
    tmp[j] = '\0';
}

bool isSumEqual(char * firstWord, char * secondWord, char * targetWord){
    int target_sum = 0;
    int sum = 0;
    
    char *tmp = malloc(sizeof(char) * 9);
    
    findDigitArray(firstWord,tmp);
    sum += atoi(tmp);
    
    findDigitArray(secondWord,tmp);
    sum += atoi(tmp);

    findDigitArray(targetWord,tmp);
    target_sum += atoi(tmp);
    
    return (sum == target_sum ? true : false);
}