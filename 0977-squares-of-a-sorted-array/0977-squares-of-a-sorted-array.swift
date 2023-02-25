class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var arr = nums
        var i = 0
        while i < arr.count {
            arr[i] *= arr[i]
            i += 1
        }
        arr.sort()
        return arr
    }
}