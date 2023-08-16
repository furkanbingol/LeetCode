class Solution {
    func customSortString(_ order: String, _ s: String) -> String {
        var res = ""
        var i = 0
        var orderArr = Array(order)
        var sArr = Array(s)
        
        while i < orderArr.count {
            var j = 0
            while j < sArr.count {
                if orderArr[i] == sArr[j] {
                    res += String(orderArr[i])
                    sArr.remove(at: j)
                    j -= 1
                }
                j += 1
            }
            i += 1
        }
        
        while !sArr.isEmpty {
            res += String(sArr[0])
            sArr.remove(at: 0)
        }
        
        return res
    }
}