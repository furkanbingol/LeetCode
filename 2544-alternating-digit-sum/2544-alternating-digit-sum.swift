class Solution {
    func alternateDigitSum(_ n: Int) -> Int {
        if n <= 9 { return n }
        
        var tmp = n
        var sum = 0
        var len = 0
        var flag: Int
        
        while tmp > 0 {
            len += 1
            tmp /= 10
        }
        tmp = n
        
        if (len % 2 == 1) {
            flag = 1
            while tmp > 0 {
                sum += (flag * tmp % 10)
                tmp /= 10
                flag *= -1
            }
        } else {
            flag = -1
            while tmp > 0 {
                sum += (flag * tmp % 10)
                tmp /= 10
                flag *= -1
            }
        }
        
        return sum 
    }
}