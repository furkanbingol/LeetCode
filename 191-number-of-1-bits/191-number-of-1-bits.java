public class Solution {
    public int hammingWeight(int n) {
        int c = 0;
        
        while(n != 0){
            c += n & 1;
            n = n >>> 1;  //>>: Arithmetic Shift(depends on sign extension) ,  >>>: Logical Shift
        }
        
        return c;
    }
}