class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var i = 0
        var j = 0
        var arr = [Character]()
        
        while i < word1.count || j < word2.count {
            if i < word1.count {
                let index = word1.index(word1.startIndex, offsetBy: i)
                arr.append(word1[index])
                i += 1
            }
            if j < word2.count {
                let index = word2.index(word2.startIndex, offsetBy: j)
                arr.append(word2[index])
                j += 1
            }
        }
        return String(arr)
    }
}