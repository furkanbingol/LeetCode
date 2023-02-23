class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var xor = nums[0]
        
        var i = 1
        while i < nums.count {
            xor ^= nums[i]
            i += 1
        }
        return xor
    }
}