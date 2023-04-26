class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var section: Int
        var index1 = word.index(word.startIndex, offsetBy: 0)
        
        if word.count == 1 { return true }
        if word[index1] >= "A" && word[index1] <= "Z" { section = 1 }
        else { section = 2 }
        
        if section == 1 {
            var i = 2
            var index2 = word.index(word.startIndex, offsetBy: 1)
            if word[index2] >= "A" && word[index2] <= "Z" {
                while i < word.count {
                    index2 = word.index(word.startIndex, offsetBy: i)
                    if word[index2] >= "a" && word[index2] <= "z" { return false }
                    i += 1
                }
            } else {
                while i < word.count {
                    index2 = word.index(word.startIndex, offsetBy: i)
                    if word[index2] >= "A" && word[index2] <= "Z" { return false }
                    i += 1
                }
            }
        }
        else {
            var i = 1
            while i < word.count {
                var index2 = word.index(word.startIndex, offsetBy: i)
                if word[index2] >= "A" && word[index2] <= "Z" { return false }
                i += 1
            }
        }
        return true
    }
}