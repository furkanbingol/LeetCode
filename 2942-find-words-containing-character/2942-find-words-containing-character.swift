class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var res = [Int]()
        var i = 0
        
        for word in words {
            if word.contains(x) { res.append(i) }
            i += 1
        }
        
        return res
    }
}