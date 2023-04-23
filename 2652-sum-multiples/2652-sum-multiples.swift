class Solution {
    func sumOfMultiples(_ n: Int) -> Int {
        var sum = 0
        
        if n < 3 { return 0 }  
        
        for i in 3...n {
            if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0) { sum += i }
        }
        
        return sum
    }
}