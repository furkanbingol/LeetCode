class Solution {
    func kthFactor(_ n: Int, _ k: Int) -> Int {
        var count = 0
        var i = 1 
        
        while i <= n/2 {
            if n % i == 0 {
                count += 1
                if count == k { return i }
            }
            i += 1
        }
        if count + 1 == k { return n }
        
        return -1
    }
}