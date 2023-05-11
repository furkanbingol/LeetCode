class Solution {
    func partitionString(_ s: String) -> Int {
        var dict = [Character : Int]()
        var res = 0
        
        for char in s {
            if dict.keys.contains(char) {
                res += 1
                dict.removeAll()
            }
            dict[char] = 1
        }
        if !dict.isEmpty { res += 1 }
        return res
    }
}