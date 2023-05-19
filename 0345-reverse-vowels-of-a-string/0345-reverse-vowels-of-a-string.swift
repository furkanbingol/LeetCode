class Solution {
    func reverseVowels(_ s: String) -> String {
        var arr = [Character]()
        var vowels = [Character]()
        
        for i in s {
            if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" ||
                i == "A" || i == "E" || i == "I" || i == "O" || i == "U" {
                vowels.append(i)
            }
        }
        var k = vowels.count-1
        
        for i in s {
            if i != "a" && i != "e" && i != "i" && i != "o" && i != "u" && 
                i != "A" && i != "E" && i != "I" && i != "O" && i != "U"{
                arr.append(i)
            } else {
                arr.append(vowels[k])
                k -= 1
            }
        }
        
        return String(arr)
    }
}