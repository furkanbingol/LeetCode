class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var arr = nums
        var sum = 0
        for (i,val) in nums.enumerated() {
            arr[i] += sum
            sum += val
        }
        return arr
    }
}