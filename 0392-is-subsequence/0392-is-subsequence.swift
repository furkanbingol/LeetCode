class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        var j = 0
        
        while i < s.count && j < t.count {
            if s[s.index(s.startIndex, offsetBy: i)] == t[t.index(t.startIndex, offsetBy: j)] {
                i += 1
            }
            j += 1
        }
        return i == s.count
    }
}