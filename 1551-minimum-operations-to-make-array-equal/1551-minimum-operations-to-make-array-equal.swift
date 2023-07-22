class Solution {
    func minOperations(_ n: Int) -> Int {
        var arr = [Int]()
        var res = 0
        
        for i in 0..<n {
            arr.append(2*i + 1)
        }
        
        let target = arr.count
        for i in 0..<(arr.count/2) {
            res += target - arr[i]
        }
        
        return res
    }
}