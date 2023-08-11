class Solution {
    func findValueOfPartition(_ nums: [Int]) -> Int {
        var sortedArr = nums.sorted(by: <)
        var mid = sortedArr.count / 2 - 1
        var res = 100_000_000_000
    
        for i in 0..<sortedArr.count-1 {
            let tmp = sortedArr[i+1] - sortedArr[i]
            if tmp < res {
                res = tmp 
            }
        }
        
        return res
    }
}