class Solution {
    func sumOfSquares(_ nums: [Int]) -> Int {
        var res = 0
        var len = nums.count
        
        for (i,val) in nums.enumerated() {
            if len % (i+1) == 0 { res += val*val }
        }
        
        return res
    }
}