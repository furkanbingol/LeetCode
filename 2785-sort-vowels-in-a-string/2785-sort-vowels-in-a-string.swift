class Solution {
    func sortVowels(_ s: String) -> String {
        var vowelsArray = [Character]()
        var k: Int
        var res = ""
        
        for ch in s {
            if isVowel(ch) {
                vowelsArray.append(ch)
            }
        }
        
        vowelsArray = vowelsArray.sorted(by: <)
        k = 0
        for ch in s {
            if isVowel(ch) {
                res.append(vowelsArray[k])
                k += 1
            } else {
                res.append(ch)
            }
        }
        
        return res
    }
    
    private func isVowel(_ ch: Character) -> Bool {
        if ch == "a" || ch == "e" || ch == "i" || ch == "o" || ch == "u"
            || ch == "A" || ch == "E" || ch == "I" || ch == "O" || ch == "U" {
            return true
        }
        return false
    }
}