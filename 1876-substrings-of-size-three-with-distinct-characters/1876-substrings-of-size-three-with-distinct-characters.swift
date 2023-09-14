class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        var arr = Array(s)
        var i = 0
        var res = 0
        
        while i < s.count-2 {
            let substr = String(arr[i]) + String(arr[i+1]) + String(arr[i+2])
            if isUnique(substr) { res += 1 }
            i += 1
        }
        return res
    }
    
    private func isUnique(_ substr: String) -> Bool {
        var charSet = Set<Character>()
        for i in substr { charSet.insert(i) }
        return charSet.count == 3
    }
}