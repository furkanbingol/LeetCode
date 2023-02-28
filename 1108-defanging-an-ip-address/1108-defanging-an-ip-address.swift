class Solution {
    func defangIPaddr(_ address: String) -> String {
        var str = String()
        
        for c in address {
            if c == "." {
                str.append("[")
                str.append(".")
                str.append("]")
            } else {
                str.append(c)
            }
        }
        return str
    }
}