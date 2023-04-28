class Solution {
    func pivotInteger(_ n: Int) -> Int {
        var sum = (n * (n+1)) / 2
        var sumTwo = 0
        var tmp = n
        
        if n == 1 { return 1 }
        
        while tmp > 0 {
            if sum + tmp + 1 == sumTwo { return tmp + 1 }
            if sumTwo > sum + tmp { return -1 }
            sum -= tmp
            sumTwo += tmp
            tmp -= 1
        }
        return -1
    }
}