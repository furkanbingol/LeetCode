class Solution {
    func matrixSum(_ nums: [[Int]]) -> Int {
        var sum = 0
        var i = 0
        var arr = nums
        
        for i in 0..<arr.count {
            arr[i] = arr[i].sorted(by: >)
        }
        
        while i < arr[0].count {
            var j = 0
            var tmpSum = 0
            while j < arr.count {
                tmpSum = max(tmpSum, arr[j][i])
                j += 1
            }
            sum += tmpSum
            i += 1 
        }
        
        return sum
    }
}