class Solution {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        var res = [String]()
        
        for word in words {
            for unitWord in word.split(separator: separator) {
                if unitWord.count != 0 {
                    res.append(String(unitWord))
                }
            }
        }
        
        return res
    }
}
