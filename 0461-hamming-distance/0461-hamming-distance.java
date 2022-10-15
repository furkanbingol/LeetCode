class Solution {
    public int hammingDistance(int x, int y) {
        int xxoorr = x ^ y;
        int count = 0;
        
        while(xxoorr != 0)
        {
            if((1 & xxoorr) != 0)
                count++;
            xxoorr >>= 1;
        }
        return count;
    }
}