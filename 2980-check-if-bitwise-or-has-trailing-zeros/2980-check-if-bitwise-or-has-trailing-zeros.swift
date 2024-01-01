// Trailing zeros -> Even Number

class Solution {
    func hasTrailingZeros(_ nums: [Int]) -> Bool {
        for i in 0..<nums.count-1 {
            for j in (i+1)..<nums.count {
                if ((nums[i] | nums[j]) % 2 == 0) {
                    return true
                }
            }
        }    
        
        return false
    }
}