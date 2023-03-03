class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 {
            return 0
        }
        var cnt = 1
        while cnt * cnt <= x {
            cnt += 1
        }
        return cnt-1
    }
}