class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        var res = nums[0]
        
        for i in 1..<nums.count {
            if (abs(nums[i]) < abs(res)) || (abs(nums[i]) == abs(res) && nums[i] > res) {
                res = nums[i]
            }
        }
        
        return res
    }
}