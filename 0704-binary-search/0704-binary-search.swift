//You must write an algorithm with O(log n) runtime complexity.

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        
        while l <= r {
            var mid = (l+r)/2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                r = mid-1
            } else {
                l = mid+1
            }
        }
        return -1
    }
}