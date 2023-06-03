class Solution {
    func removeTrailingZeros(_ num: String) -> String {
        var res =  ""
        var flag = false
        var reverse = String(num.reversed())
        
        for ch in reverse {
            if ch != "0" && !flag {
                res.append(ch)
                flag = true
            } else if flag {
                res.append(ch)
            }
        }
        
        return String(res.reversed())
    }
}