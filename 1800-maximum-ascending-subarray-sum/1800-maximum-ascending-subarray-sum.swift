class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var max = 0
        var tmp = nums[0]
        var i = 1
        
        while i < nums.count {
            if nums[i] > nums[i-1] {
                tmp += nums[i]
            } else {
                if tmp > max { max = tmp }
                tmp = nums[i]
            }
            i += 1
        }
        if tmp > max { max = tmp }
        
        return max
    }
}