class Solution {
    func evenOddBit(_ n: Int) -> [Int] {
        var res = [0,0]
        var tmp = n
        var cnt = 0
        
        // 16 ----> 10000
        while tmp > 0 {
            if tmp % 2 == 1 && cnt % 2 == 0 {
                res[0] += 1
            } else if tmp % 2 == 1 {
                res[1] += 1
            }
            cnt += 1
            tmp /= 2
        }
        
        return res
    }
}