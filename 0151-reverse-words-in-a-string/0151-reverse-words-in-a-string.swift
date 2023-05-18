class Solution {
    func reverseWords(_ s: String) -> String {
        var strings = s.split(separator: " ")
        var arr = ""
        
        var i = strings.count-1
        while i >= 0 {
            if i != 0 {
                arr += strings[i] + " "
            } else {
                arr += strings[i]
            }
            i -= 1
        }
        
        return arr
    }
}