class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        var res = 0
        var len = pref.count
        
        for word in words {
            let str = word.prefix(len)
            if str == pref { res += 1 }
        }
        
        return res
    }
}