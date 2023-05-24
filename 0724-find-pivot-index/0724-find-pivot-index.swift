class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var rSum = 0
        var lSum = 0
        
        for i in nums { 
            rSum += i
        }
        
        for (i,val) in nums.enumerated() {
            rSum -= val
            if lSum == rSum {
                return i
            }
            lSum += val
        }
        return -1
    }
}