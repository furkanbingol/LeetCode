class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var val = 0
        
        for char in t {
            var asciiVal = Int(char.asciiValue!)
            val += asciiVal 
        }
        
        for char in s {
            var asciiVal = Int(char.asciiValue!)
            val -= asciiVal
        }
        
        var resultChar = Character(UnicodeScalar(val)!) 
        return resultChar
    }
}