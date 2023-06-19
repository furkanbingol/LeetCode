class Solution {
    func smallestEqual(_ nums: [Int]) -> Int {
        for (i,val) in nums.enumerated() {
            if i % 10 == val {
                return i
            }
        }
        return -1
    }
}