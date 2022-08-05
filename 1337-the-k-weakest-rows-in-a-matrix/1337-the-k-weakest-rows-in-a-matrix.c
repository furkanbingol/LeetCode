int cmpfunc(void *a, void *b){
    return (*(int*)a - *(int*)b);
}

int isUnique(int *answer, int k, int val){
    for(int i = 0; i < k; i++){
        if(answer[i] == val)
            return 0;
    }
    return 1;
}

int* kWeakestRows(int** mat, int matSize, int* matColSize, int k, int* returnSize){
    int *arr = malloc(sizeof(int) * matSize);
    int *tmp = calloc(sizeof(int) , matSize);
    int *answer = malloc(sizeof(int) * k);
    memset(arr, -1, sizeof(int) * matSize);   //initialize with -1    
    memset(answer, -1, sizeof(int) * k);      //initialize with -1
    int i = 0,j;
    
    while(i < matSize){
        j = 0;
        while(j < *matColSize){
            if(!mat[i][j]){
                arr[i] = j;
                tmp[i] = arr[i];
                break;   
            }
            j++;
        }
        if(arr[i] == -1){
            arr[i] = *matColSize;
            tmp[i] = arr[i];
        }
        i++;
    }
    qsort(arr, matSize, sizeof(int), cmpfunc);
        
    i = 0;
    for(i = 0; i < k; i++){
        for(j = 0; j < matSize; j++){
            if(arr[i] == tmp[j] && isUnique(answer, k, j)){
                answer[i] = j;
                break;
            }
        }
    }
    *returnSize = k;
    return answer;
}