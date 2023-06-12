class Solution {
    func findNonMinOrMax(_ nums: [Int]) -> Int {
        if nums.count < 3 { return -1 }
        var maxVal = -1
        var minVal = 101
        
        for i in nums {
            maxVal = max(i, maxVal)
            minVal = min(i, minVal)
        }
        
        for i in nums {
            if i != maxVal && i != minVal { return i }
        }
        
        return -1
    }
}