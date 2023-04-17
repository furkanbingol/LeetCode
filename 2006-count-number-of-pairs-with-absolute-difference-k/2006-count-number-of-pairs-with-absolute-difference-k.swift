class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var cnt = 0
        var i = 0
        
        while i < nums.count-1 {
            var j = i + 1 
            while j < nums.count {
                if abs(nums[i] - nums[j]) == k { cnt += 1 }        
                j += 1
            }
            i += 1
        }
        
        return cnt
    }
}