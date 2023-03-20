class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        var digitSum = 0
        var numberSum = 0
        
        for val in nums {
            numberSum += val
            digitSum += sumOfDigits(val)
        }
        
        return abs(numberSum - digitSum)
    }
    
    func sumOfDigits(_ number: Int) -> Int {
        if number < 10 {
            return number
        }
        
        var sum = 0
        var tmp = number
        while tmp > 0 {
            sum += tmp % 10
            tmp /= 10
        }
        return sum
    }
}