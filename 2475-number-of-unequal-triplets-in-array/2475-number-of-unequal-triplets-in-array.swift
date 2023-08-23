class Solution {
    func unequalTriplets(_ nums: [Int]) -> Int {
        var res = 0
        
        for i in 0..<nums.count-2 {
            for j in (i+1)..<nums.count-1 {
                for k in (j+1)..<nums.count {
                    if nums[i] != nums[j] &&
                        nums[i] != nums[k] &&
                        nums[j] != nums[k] {
                            res += 1
                    }
                }
            }
        }
        
        return res
    }
}