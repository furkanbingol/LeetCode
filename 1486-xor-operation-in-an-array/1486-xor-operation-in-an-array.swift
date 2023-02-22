class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var xorResult = start   //start + 2*0
        
        for i in 1..<n {
            var currentValue = start + 2*i
            xorResult ^= currentValue
        }
        return xorResult
    }
}