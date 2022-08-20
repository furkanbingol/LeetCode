typedef struct {
    int indices[20];
    char ch[20];
    char comb[20];
    int l;
    int k;
    int finish;
} CombinationIterator;


CombinationIterator* combinationIteratorCreate(char * characters, int combinationLength) {
    int i;
    CombinationIterator* obj = calloc(1, sizeof(*obj));
    obj->l = strlen(characters);
    obj->k = combinationLength;
    for (i = 0; i < obj->k; i++) {
        obj->indices[i] = i;
    }
    strcpy(obj->ch, characters);
    return obj;
}

char * combinationIteratorNext(CombinationIterator* obj) {
    int i;
    for (i = 0; i < obj->k; i++) {
        obj->comb[i] = obj->ch[obj->indices[i]];
    }
    obj->comb[i] = 0;
    for (i = obj->k-1; i >= 0; i--) {
        if (obj->indices[i] < obj->l - (obj->k-1-i) - 1) {
            break;
        }
    }
    obj->finish = (i == -1);
    if (!obj->finish) {
        obj->indices[i]++;
        for (i = i+1; i < obj->k; i++) {
            obj->indices[i] = obj->indices[i-1]+1;
        }
    }
    return obj->comb;
}

bool combinationIteratorHasNext(CombinationIterator* obj) {
    return !obj->finish;
}

void combinationIteratorFree(CombinationIterator* obj) {
    free(obj);
}

/**
 * Your CombinationIterator struct will be instantiated and called as such:
 * CombinationIterator* obj = combinationIteratorCreate(characters, combinationLength);
 * char * param_1 = combinationIteratorNext(obj);
 
 * bool param_2 = combinationIteratorHasNext(obj);
 
 * combinationIteratorFree(obj);
*/