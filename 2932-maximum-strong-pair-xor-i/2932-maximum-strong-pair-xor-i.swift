class Solution {
    func maximumStrongPairXor(_ nums: [Int]) -> Int {
        var maxXor = 0
        
        for i in 0..<nums.count-1 {
            for j in (i+1)..<nums.count {
                if (abs(nums[i] - nums[j]) <= min(nums[i], nums[j])) { 
                    let val = nums[i] ^ nums[j]
                    if val > maxXor { maxXor = val }
                }
            }
        }
        
        return maxXor
    }
}