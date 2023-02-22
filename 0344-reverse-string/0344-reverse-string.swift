class Solution {
    func reverseString(_ s: inout [Character]) {
        var j = s.count-1
        
        for (i,char) in s.enumerated() {
            if i == s.count / 2 {
                break
            }
            var tmp = s[i]
            s[i] = s[j]
            s[j] = tmp
            j -= 1
        }
    }
}