class Solution {
    func maximumValue(_ strs: [String]) -> Int {
        var isNumeric: Bool
        var maxLength = 0
        
        for i in 0..<strs.count {
            isNumeric = true
            let curStr = strs[i]
            var k = 0
            var index = curStr.index(curStr.startIndex, offsetBy: 0)
            
            while k < strs[i].count {
                if curStr[index] < "0" || curStr [index] > "9" {
                    isNumeric = false
                    break
                }
                k += 1
                index = curStr.index(curStr.startIndex, offsetBy: k)
            }
            
            if isNumeric {
                if atoi(curStr) > maxLength {
                    maxLength = Int(atoi(curStr))
                }
            } else {
                if curStr.count > maxLength {
                    maxLength = curStr.count
                }
            }
        }
        
        return maxLength
    }
}