// You must write an algorithm that runs in O(n) time and without using the division operation. 
// (The output array does not count as extra space for space complexity analysis.)

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        var leftProduct = [Int](repeating: 0, count: nums.count)
        var rightProduct = [Int](repeating: 0, count: nums.count)
        
        leftProduct[0] = 1
        rightProduct[nums.count-1] = 1
        
        var i = 1
        while i < nums.count {
            leftProduct[i] = leftProduct[i-1] * nums[i-1]
            i += 1
        }
        
        i = nums.count-2
        while i >= 0 {
            rightProduct[i] = rightProduct[i+1] * nums[i+1]
            i -= 1
        }
        
        i = 0
        while i < nums.count {
            res.append(leftProduct[i] * rightProduct[i])
            i += 1
        }
        
        return res
    }
}