class Solution {
    func maximumNumberOfStringPairs(_ words: [String]) -> Int {
        var count = 0
    
        for i in 0..<words.count {
            for j in (i + 1)..<words.count {
                if words[i] == String(words[j].reversed()) {
                    count += 1
                }
            }
        }

        return count
    }
}