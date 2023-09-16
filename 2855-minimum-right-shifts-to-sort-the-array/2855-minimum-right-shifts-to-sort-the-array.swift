class Solution {
    func minimumRightShifts(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var foundShift = false
        var count = 0
        
        for i in 1..<nums.count {
            defer { if foundShift { count += 1 } }
            guard nums[i] < nums[i-1] else {
                if foundShift, nums[i] > nums[0] { return -1 }
                else { continue }
            }
            guard !foundShift else { return -1 }
            foundShift = true
        }
        
        return count
    }
}