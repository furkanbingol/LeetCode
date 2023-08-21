class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        var res = ""
        
        for str in words {
            res += String(str.first!)
        }
        
        return res == s
    }
}