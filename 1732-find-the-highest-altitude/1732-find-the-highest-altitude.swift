class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var sum = 0
        var max = 0
        
        for i in gain {
            sum += i
            if sum > max { max = sum }
        }

        return max
    }
}