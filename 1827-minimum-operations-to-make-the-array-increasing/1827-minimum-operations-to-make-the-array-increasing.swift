class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var arr = nums
        var minOp = 0
        
        for i in 1..<arr.count {
            if arr[i] <= arr[i-1] { 
                let diff = arr[i-1] - arr[i] + 1
                arr[i] += diff
                minOp += diff
            }
        }
        
        return minOp
    }
}