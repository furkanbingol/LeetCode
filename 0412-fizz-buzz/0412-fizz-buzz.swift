class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        
        for i in 1...n {
            if i % 15 == 0 {
                result.append("FizzBuzz")
            } else if i % 5 == 0 {
                result.append("Buzz")
            } else if i % 3 == 0 {
                result.append("Fizz")
            } else {
                result.append(String(i))
            }
        }
        return result
    }
}