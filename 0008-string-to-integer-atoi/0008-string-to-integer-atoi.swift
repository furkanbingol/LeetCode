class Solution {
    func myAtoi(_ s: String) -> Int {
        if s.count == 0 || s == nil{
            return 0
        }
        
        var res = 0
        var sign = 1
        var i = s.index(s.startIndex, offsetBy: 0)
        var j = 0
        
        for c in s {
            if c == " " {
                j += 1
            } else {
                if (c < "0" || c > "9") && c != "-" && c != "+" {
                    return 0
                } 
                break
            }
        }
        if j == s.count {
            return 0
        }
        i = s.index(s.startIndex, offsetBy: j)
        if s[i] == "-" || s[i] == "+" {
            if s[i] == "-" {
                sign *= -1
            }
            j += 1
            i = s.index(s.startIndex, offsetBy: j)
        }
        
        var counter = 0
        
        for c in s {
            if counter < j {
                counter += 1
            } else if c >= "0" && c <= "9" {
                let val = c.asciiValue! - 48   //48 == "0"
                res = res * 10 + Int(val)
                if res * sign > Int32.max {
                    return Int(Int32.max)
                } else if res * sign < Int32.min {
                    return Int(Int32.min)
                }
            } else {
                return res * sign
            }
        }
        return res * sign
    }
}