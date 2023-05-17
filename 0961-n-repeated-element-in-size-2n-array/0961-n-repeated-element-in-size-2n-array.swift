class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var dict = [Int : Int]()
        
        for i in nums {
            if dict[i] == nil { dict[i] = 1 }
            else { dict[i]! += 1 }
        }
        
        for (key,val) in dict {
            if val == nums.count / 2 {
                return key
            }
        }
        
        return 0
    }
}