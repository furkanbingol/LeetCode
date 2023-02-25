class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        var i = 1
        while i < n {
            i *= 4
        }
        return i == n
    }
}