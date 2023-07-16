class Solution {
    func findGCD(_ nums: [Int]) -> Int {
        var min = 1001
        var max = 0
        
        for i in nums {
            if i > max { max = i }
            if i < min { min = i }
        }
        
        var x = 0
        while min != 0 {
            x = max
            max = min
            min = x % max
        }
        return max
    }
}