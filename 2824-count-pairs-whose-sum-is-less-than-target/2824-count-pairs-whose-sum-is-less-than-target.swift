class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var cnt = 0
        
        for i in 0..<nums.count-1 {
            for j in (i+1)..<nums.count {
                if nums[i] + nums[j] < target { cnt += 1}
            }
        }
        
        return cnt
    }
}