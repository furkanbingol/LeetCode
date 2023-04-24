class Solution {
    func findTheArrayConcVal(_ nums: [Int]) -> Int {
        var sum = 0
        var i = 0
        var arr = nums
        var j = arr.count-1
        
        while !arr.isEmpty {
            if arr.count == 1 {
                sum += arr[0]
                arr.removeLast()
            } else {
                var d = findDigitNumber(num: arr[j])
                sum += arr[i] * powInt(10,d) + arr[j]
                arr.removeFirst()
                arr.removeLast()
            }
            j = arr.count-1
        } 
        
        return sum
    }
    
    private func findDigitNumber(num: Int) -> Int {
        var tmp = num
        var digits = 0
        if tmp < 10 { return 1 }
        
        while tmp > 0 {
            tmp /= 10
            digits += 1
        }
        return digits
    }
    
    private func powInt (_ base: Int, _ power: Int) -> Int {
        var answer : Int = 1
        for _ in 0..<power { answer *= base }
        return answer
    }
}