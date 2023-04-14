class Solution {
    func countDigits(_ num: Int) -> Int {
        var arr = [Int]()
        var tmp = num
        var count = 0
        
        while tmp > 0 {
            arr.append(tmp % 10)
            tmp /= 10
        }
        
        for i in arr {
            if num % i == 0 { count += 1 }
        }
        
        return count
    }
}