class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var res = [Int].init(repeating: 0, count: nums.count * 2)
        var i = 0
        
        while i < nums.count * 2 {
            if i >= nums.count {
                res[i] = nums[i % nums.count]
            } else {
                res[i] = nums[i]
            }
            i += 1
        }
        return res
    }
}