class Solution {
    func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
        var dict = [Character : Int]()
        var i = 0
        
        for ch in s {
            if !dict.keys.contains(ch) { dict[ch] = i }
            else { 
                let index = Int(ch.asciiValue!) - 97    // 97 = "a"
                let dist = (i - dict[ch]!) - 1
                if dist != distance[index] { return false }
            }
            i += 1
        }
        
        return true
    }
}