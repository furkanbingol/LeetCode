typedef struct pair {
    int val;
    int cnt;
}PAIR;

int cmp(const void* a, const void* b) {
    const PAIR pa = *(const PAIR*) a;
    const PAIR pb = *(const PAIR*) b;
    return pa.cnt == pb.cnt ? (pa.val - pb.val) : (pa.cnt - pb.cnt);
}

int find(int a) {
    int res = 0;
    while (a) {
        res += a % 2;
        a /= 2;
    }
    return res;    
}

int* sortByBits(int* arr, int arrSize, int* returnSize) {
    *returnSize = arrSize;
    PAIR *pairs = malloc(arrSize * sizeof(PAIR));
    
    for (int i = 0; i < arrSize; i++) {
        pairs[i].val = arr[i];
        pairs[i].cnt = find(arr[i]);
    }
    
    qsort(pairs, arrSize, sizeof(PAIR), cmp);
    
    for (int i = 0; i < arrSize; i++)
        arr[i] = pairs[i].val;
    free(pairs);
    return arr;
}