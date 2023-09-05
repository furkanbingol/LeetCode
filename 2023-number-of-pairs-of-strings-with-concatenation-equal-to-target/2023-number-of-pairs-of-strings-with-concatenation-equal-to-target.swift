class Solution {
    func numOfPairs(_ nums: [String], _ target: String) -> Int {
        var res = 0
        
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i != j {
                    res += (nums[i] + nums[j] == target ? 1 : 0)
                }
            }
        }
        
        return res
    }
}