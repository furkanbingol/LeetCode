class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var sign = 1
        
        for i in nums {
            if i == 0 { return 0 }
            else if i < 0 { sign *= -1 }
        }
        
        return sign
    }
}