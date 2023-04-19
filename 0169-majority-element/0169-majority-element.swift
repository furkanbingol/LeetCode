// Follow-up: Could you solve the problem in linear time-O(n)- and in O(1) space?
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [String: Int] = [:]
        
        for item in nums {    
            if dict.keys.contains("\(item)") { dict["\(item)"]! += 1 } 
            else { dict["\(item)"] = 1 }
        }
        
        return Int(dict.max(by:{$0.value < $1.value})?.key ?? "0") ?? 0
    }
}