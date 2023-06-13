class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var val = nums[0]
        var k = 1
        
        for i in 1..<nums.count {
            if nums[i] != val {
                val = nums[i]
                nums[k] = nums[i]
                k += 1
            }
        }
        return k
    }
}
