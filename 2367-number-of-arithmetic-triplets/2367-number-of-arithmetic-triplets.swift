class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var cnt = 0
        var i = 0
        
        while i < nums.count - 2 {
            var j = i + 1
            while j < nums.count - 1 {
                var k = j + 1 
                while k < nums.count {
                    if nums[k]-nums[j] == diff && nums[j]-nums[i] == diff { cnt += 1 }
                    k += 1
                }
                j += 1
            }
            i += 1
        }
        
        return cnt
    }
}