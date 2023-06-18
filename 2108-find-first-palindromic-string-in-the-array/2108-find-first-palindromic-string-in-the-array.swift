class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for str in words {
            if isPalindromic(str) {
                return str
            }
        }
        
        return ""
    }
    
    private func isPalindromic(_ str: String) -> Bool {
        var len = str.count
        var i = 0
        var j = len-1
        
        while i < len/2 {
            let indexI = str.index(str.startIndex, offsetBy: i)
            let indexJ = str.index(str.startIndex, offsetBy: j)
            
            if str[indexI] != str[indexJ] {
                return false
            }
            
            i += 1
            j -= 1
        }

        return true
    }
    
}