class Solution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        var cnt = 0
        var dict1 = [String : Int]()
        var dict2 = [String : Int]()
        
        for i in words1 {
            if dict1[i] == nil { dict1[i] = 1 }
            else { dict1[i]! += 1 }
        }
        for i in words2 {
            if dict2[i] == nil { dict2[i] = 1 }
            else { dict2[i]! += 1 }
        }
        
        // i: String
        // val: Int
        for (i,val1) in dict1 {
            if val1 == 1 {
                for (j,val2) in dict2 {
                    if i == j && val2 == 1 { cnt += 1 }
                }
            }
        }
        
        return cnt
    }
}