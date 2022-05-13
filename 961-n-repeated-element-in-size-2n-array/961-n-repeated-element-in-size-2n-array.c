int repeatedNTimes(int* A, int ASize) {
    int hash[10000] = {0};
    
    for (int i = 0; i < ASize; i++) {
        hash[A[i]]++;
        if (hash[A[i]] > 1)
            return A[i];
    }
    return 0;
}