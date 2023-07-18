class Solution {
    func similarPairs(_ words: [String]) -> Int {
        var i = 0
        var res = 0
        
        while i < words.count-1 {
            var j = i+1
            while j < words.count {
                if satisfySameCharacters(words[i], words[j]) { 
                    res += 1 
                }
                j += 1
            }
            i += 1
        }
        
        return res
    }
    
    private func satisfySameCharacters(_ firstStr: String, _ secondStr: String) -> Bool {
        var firstSet = Set<Character>()
        var secondSet = Set<Character>()
        
        for ch in firstStr {
            firstSet.insert(ch)
        }
        for ch in secondStr {
            secondSet.insert(ch)
        }
        
        if firstSet.count != secondSet.count {
            return false
        } else {
            for element in firstSet {
                if !secondSet.contains(element) {
                    return false
                }
            }
        }
        
        return true
    }
}