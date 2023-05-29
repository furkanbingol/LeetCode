// You must write an algorithm that runs in O(log n) time.
// nums[i] != nums[i + 1] for all valid i.

class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        if nums.count == 1 { return 0 }
        
        var l = 0
        var r = nums.count - 1
        
        while l <= r {
            var mid = (l+r)/2
            if mid == 0 && nums[mid] > nums[mid+1] {
                return mid
            } else if mid == nums.count-1 && nums[mid] > nums[mid-1] {
                return mid
            }
            
            if nums[mid] < nums[mid+1] {
                l = mid+1
            } else if nums[mid] < nums[mid-1] {
                r = mid-1
            } else {
                return mid
            }
        }
        return 0
    }
}