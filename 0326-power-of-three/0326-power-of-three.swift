class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        var i = 1
        while i < n {
            i *= 3
        }
        return i == n
    }
}