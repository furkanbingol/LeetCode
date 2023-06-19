class Solution {
    func tribonacci(_ n: Int) -> Int {
        var t0 = 0
        var t1 = 1
        var t2 = 1
        
        if n == 0 { return 0 }
        
        var i = 3
        while i <= n {
            var tNext = t2 + t1 + t0
            var tmp = t2
            var tmp2 = t1
            
            t2 = tNext
            t1 = tmp
            t0 = tmp2
            
            i += 1
        }
        
        return t2
    }
}