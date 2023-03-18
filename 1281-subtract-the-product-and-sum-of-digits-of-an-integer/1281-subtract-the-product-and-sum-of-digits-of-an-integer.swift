class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var product = 1
        var sum = 0
        var tmp = n
        
        while tmp > 0 {
            product *= tmp%10
            sum += tmp%10
            tmp /= 10
        }
        return product-sum
    }
}