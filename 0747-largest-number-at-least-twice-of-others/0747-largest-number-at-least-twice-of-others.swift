class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var max = 0
        var maxIndex = 0
        
        for (i,val) in nums.enumerated() {
            if val > max { 
                max = val
                maxIndex = i
            }
        }
        
        for i in nums {
            if i*2 > max && i != max { return -1 }
        }
        return maxIndex
    }
}