class Solution {
    func separateDigits(_ nums: [Int]) -> [Int] {
        var arr = [Int]()
        
        for i in nums {
            var digits = [Int]()
            var tmp = i
            while tmp > 0 {
                digits.append(tmp % 10)
                tmp /= 10
            }
            digits = digits.reversed()
            for j in digits {
                arr.append(j)
            }
        }
    
        return arr
    }
}