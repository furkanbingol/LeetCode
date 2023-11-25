class Solution {
    func distributeCandies(_ n: Int, _ limit: Int) -> Int {
        var count = 0
        
        for i in 0...n {
            if i > limit { break }
            for j in 0...n {
                if j > limit { break }
                for k in 0...n {
                    if k > limit { break }
                    if i+j+k == n { count += 1 }
                }
            }
        }
        
        return count
    }
}