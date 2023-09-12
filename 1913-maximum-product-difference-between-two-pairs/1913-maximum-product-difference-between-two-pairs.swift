class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        var arr = nums.sorted(by: >)
        return arr[0]*arr[1] - arr[arr.count-2]*arr[arr.count-1]
    }
}