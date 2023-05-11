class Solution {
    func minPartitions(_ n: String) -> Int {
        var answer = 0
        var i = 0
        
        for char in n {
            let val = Int(char.asciiValue!)
            answer = max(val - 48, answer)  // "0" : 48
        }
        
        return answer
    }
}