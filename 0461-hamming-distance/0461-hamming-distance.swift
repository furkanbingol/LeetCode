class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var diff = 0
        var xor = x ^ y
        
        while xor != 0 {
            if ((1 & xor) != 0) {
                diff += 1
            }
            xor = xor >> 1
        }
        return diff
    }
}