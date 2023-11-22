class Solution {
    func differenceOfSums(_ n: Int, _ m: Int) -> Int {
        var diff = 0
        
        for i in 1...n {
            if i % m != 0 { diff += i }
            else { diff -= i }
        }
        
        return diff
    }
}