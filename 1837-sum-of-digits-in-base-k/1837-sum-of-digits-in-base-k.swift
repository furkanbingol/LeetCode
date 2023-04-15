class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var basedNumber = convertToSpesificBase(n, k)
        var sum = 0
        
        while basedNumber > 0 {
            sum += basedNumber % 10
            basedNumber /= 10
        }
        
        return sum
    }
    
    private func convertToSpesificBase(_ num: Int, _ base: Int) -> Int {
        var tmp = num
        var res = 0
        
        while tmp > 0 {
            res = res * 10 + (tmp % base)
            tmp /= base
        }
        
        return res
    }
    
}