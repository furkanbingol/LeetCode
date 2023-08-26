class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var dict = [String : Int]()
        var count = 0
        
        for str in arr {
            if !dict.keys.contains(str) { dict[str] = 1 }
            else { dict[str]! += 1 }
        }
        
        for str in arr {
            if dict[str] == 1 {
                count += 1 
                if count == k { 
                    return str 
                }
            }
        }
        
        return ""
    }
}