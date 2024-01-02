class Solution {
    private let vowels: [Character] = ["a", "e", "i", "o", "u"]

    func beautifulSubstrings(_ s: String, _ k: Int) -> Int {
        if s.isEmpty { return 0 }
        
        let s = Array(s)
        let n = s.count
        var res = 0

        for i in 0..<n {
            var v = 0, c = 0
            
            for j in i..<n  {
                if isVowel(s[j]) { v += 1 } 
                else { c += 1 }
                if v == c && v * c % k == 0 { 
                    res += 1
                }
            }
        }
        
        return res
    }
    
    private func isVowel(_ ch: Character) -> Bool {
        return vowels.contains(ch)
    }
}
