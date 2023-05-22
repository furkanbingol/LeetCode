class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        var k = 0
        
        while i < nums.count {
            if nums[i] != 0 {
                nums[k] =  nums[i]
                k += 1
            }
            i += 1
        }
        
        while k < nums.count {
            nums[k] = 0
            k += 1
        }
        
    }
}