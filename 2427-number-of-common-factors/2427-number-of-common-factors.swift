class Solution {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        let min = min(a,b)
        var cnt = 1
        var i = 2
        
        while i <= min {
            if (a % i == 0 && b % i == 0) {
                cnt += 1
            }
            i += 1
        }
        
        return cnt
    }
}