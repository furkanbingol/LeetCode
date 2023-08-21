class Solution {
    func countSeniors(_ details: [String]) -> Int {
        var count = 0
        
        for str in details {
            let arr = Array(str)
            let first = arr[11].asciiValue! - 48     // "0" = 48 (ASCII)
            let second = arr[12].asciiValue! - 48
            if first*10 + second > 60 { count += 1 }
        }
        
        return count
    }
}