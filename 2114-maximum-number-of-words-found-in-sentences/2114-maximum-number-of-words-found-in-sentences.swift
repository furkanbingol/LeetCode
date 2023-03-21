class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var mostWord = 1
        
        for i in sentences {
            var wordCount = 1
            for j in i {
                if j == " " {
                    wordCount += 1
                }
            }
            if wordCount > mostWord {
                mostWord = wordCount
            }
        }
        
        return mostWord
    }
}