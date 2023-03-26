class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var res = nums
        
        for (i,val) in nums.enumerated() {
            res[i] = nums[val]
        }
        return res
    }
}