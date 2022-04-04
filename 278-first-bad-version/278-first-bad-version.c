// The API isBadVersion is defined for you.
// bool isBadVersion(int version);

int firstBadVersion(int n) {
    unsigned int l,r,mid;
    r = n;
    l = 1;
    
    while(l <= r)
    {
        mid = (l+r)/2;
        if(isBadVersion(mid) == true)
            r = mid - 1;
        else
            l = mid + 1;
    }
    return l;
}