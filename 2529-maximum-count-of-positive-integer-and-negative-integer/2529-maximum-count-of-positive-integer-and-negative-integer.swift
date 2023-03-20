class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        var posCount = 0
        var negCount = 0
        
        for i in nums {
            if i < 0 { negCount += 1 }
            else if i > 0 { posCount += 1 }
        }
        return max(posCount, negCount)
    }
}