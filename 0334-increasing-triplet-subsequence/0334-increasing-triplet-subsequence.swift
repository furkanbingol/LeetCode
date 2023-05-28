//O(n) time complexity and O(1) space complexity
// #Trick#: start with two largest values, as soon as we find a number bigger than both, while both have been updated, return true.

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        guard nums.count >= 3 else { return false }
        
        var (small,big) = (Int.max,Int.max)
        
        for n in nums {
            if n <= small { small = n }
            else if n <= big { big = n } 
            else { return true }      // n > big
        }
        return false
    }
}
