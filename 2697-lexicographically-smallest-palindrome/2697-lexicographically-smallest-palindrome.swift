class Solution {
    func makeSmallestPalindrome(_ s: String) -> String {
        var s = Array(s)        // so we can use [] indexes!
        var (left, right) = (0, s.count-1)
        
        while left < right {
            let ch = min(s[left],s[right])
            
            (s[left], s[right]) = (ch, ch)
            (left, right) = (left+1, right-1)
        }
        return String(s)
    }
}