class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var i = 1
        while i < n {
            i *= 2
        }
        return i == n
    }
}