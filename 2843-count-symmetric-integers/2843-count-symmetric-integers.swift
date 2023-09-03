class Solution {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
        var res = 0
        
        for i in low...high {
            let numberOfDigit = digitNumber(i)
            if numberOfDigit % 2 == 0 && isSymmetricSum(i,numberOfDigit) { res += 1 }
        }
        
        return res
    }
    
    private func digitNumber(_ n: Int) -> Int {
        var count = 0
        var tmp = n
        
        while tmp > 0 {
            count += 1
            tmp /= 10
        }
        
        return count
    }
    
    private func isSymmetricSum(_ n: Int, _ numberOfDigit: Int) -> Bool {
        var tmp = n
        let len = numberOfDigit
        var firstPairSum = 0
        var secondPairSum = 0
        var i = 0
        
        while tmp > 0 {
            let val = tmp % 10
            if i < len/2 { firstPairSum += val }
            else { secondPairSum += val }
            tmp /= 10
            i += 1
        }
        
        return firstPairSum == secondPairSum
    }
}