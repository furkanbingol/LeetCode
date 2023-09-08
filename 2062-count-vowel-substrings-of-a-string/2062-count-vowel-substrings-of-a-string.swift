class Solution {
    func countVowelSubstrings(_ word: String) -> Int {
        if word.count < 5 { return 0 }
        var count = 0
        var str = word
        
        for _ in 0..<word.count {
            var j = 0
            while j < str.count {
                let substring = String(str.prefix(j+1))
                if isContainsAllVowels(substring) {
                    print(substring)
                    count += 1 
                }
                j += 1
            }
            str.removeFirst()
        }
        
        return count
    }
    
    private func isContainsAllVowels(_ str: String) -> Bool {
        var arr = [0, 0, 0, 0, 0]     
        //         a, e, i, o, u
        
        for i in str {
            if i == "a" { arr[0] += 1 }
            else if i == "e" { arr[1] += 1 }
            else if i == "i" { arr[2] += 1 }
            else if i == "o" { arr[3] += 1 }
            else if i == "u" { arr[4] += 1 }
            else { return false }
        }
        
        return arr.filter{ $0 > 0 }.count == 5
    }
}