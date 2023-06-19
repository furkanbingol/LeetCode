class Solution {
    func maxPower(_ s: String) -> Int {
        var max = 0
        var cnt = 0
        var prev = s.first!
        
        for ch in s {
            if ch == prev { cnt += 1 }
            else {
                if cnt > max {
                    max = cnt
                }
                prev = ch
                cnt = 1
            }
        }
        if cnt > max {
            max = cnt
        }
        
        return max
    }
}