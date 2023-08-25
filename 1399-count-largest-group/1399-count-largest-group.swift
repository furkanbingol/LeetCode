class Solution {
    func countLargestGroup(_ n: Int) -> Int {
        var count = 0
        var arr = [Int](repeating: 0, count: 37)   // 1 <= n <= 10^4,  9999 -> max 36 (1 indexing = 37)
        var max = 0
        
        for i in 1...n {
            let sum = digitSum(i)
            arr[sum] += 1
            if arr[sum] > max { max = arr[sum] }
        }
        
        for i in arr {
            if i == max { 
                count += 1
            }
        }
        
        return count
    }
    
    private func digitSum(_ num: Int) -> Int {
        var tmp = num
        var res = 0
        
        while tmp > 0 {
            res += tmp % 10
            tmp /= 10
        }
        return res
    }
}