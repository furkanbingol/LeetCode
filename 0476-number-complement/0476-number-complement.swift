class Solution {
    func findComplement(_ num: Int) -> Int {
        var answer = 0
        var res = ""
        var tmp = num
        
        while tmp > 0 {
            res += "\(tmp % 2)"
            tmp /= 2
        }
        res = String(res.reversed())
        
        var tmpStr = ""
        for ch in res {
            if ch == "0" { tmpStr += "1" }
            else { tmpStr += "0" }
        }
        
        res = tmpStr
        var k = res.count-1
        
        for ch in res {
            if ch == "1" { answer += intPow(2,k) }
            k -= 1
        }
        
        return answer
    }
    
    private func intPow(_ base: Int, _ pow: Int) -> Int {
        if pow == 0 { return 1 }
        
        var ans = 1
        var i = 1
        
        for i in i...pow {
            ans *= base
        }
        return ans
    }
    
}