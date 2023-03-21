class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var evenNumberOfDigits = 0
        
        for i in nums {
            if isEvenNumberOfDigits(i) {
                evenNumberOfDigits += 1
            }
        }
        
        return evenNumberOfDigits
    }
    
    private func isEvenNumberOfDigits(_ n: Int) -> Bool {
        var count = 0
        var tmp = n
        
        while tmp > 0 {
            count += 1
            tmp /= 10
        }
        
        return count % 2 == 0 ? true : false
    }
}