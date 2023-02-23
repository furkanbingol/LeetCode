class Solution {
    func fib(_ n: Int) -> Int {
        var arr = [Int](repeating: 0, count: n+1)
        
        if n == 0 {
            return 0
        } else if n == 1 || n == 2 {
            return 1
        }
        
        arr[0] = 0
        arr[1] = 1
        
        var i = 2
        while i <= n {
            arr[i] = arr[i-1] + arr[i-2]
            i += 1
        }
        return arr[n]
    }
}