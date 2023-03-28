class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var str = "\(x)"
        var j = str.count-1
        var i = 0
        
        while i < (str.count/2) {
            let index1 = str.index(str.startIndex, offsetBy: i)
            let index2 = str.index(str.startIndex, offsetBy: j)
            if str[index1] != str[index2] {
                return false
            }
            i += 1
            j -= 1
        }
        
        return true
    }
}