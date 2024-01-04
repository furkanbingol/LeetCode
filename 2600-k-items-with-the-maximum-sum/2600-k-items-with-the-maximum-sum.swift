class Solution {
    func kItemsWithMaximumSum(_ numOnes: Int, _ numZeros: Int, _ numNegOnes: Int, _ k: Int) -> Int {
        var ones = numOnes
        var zeros = numZeros
        var negs = numNegOnes
        var tmp = k
        var res = 0
        
        while ones != 0 && tmp != 0 {
            res += 1
            ones -= 1
            tmp -= 1
        }
        
        while zeros != 0 && tmp != 0 {
            zeros -= 1
            tmp -= 1
        }
        
        while negs != 0 && tmp != 0 {
            res -= 1
            negs -= 1
            tmp -= 1
        }    
        
        return res
    }
}