class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var count = 0
        var compressStr = ""
        var currentChar = chars[0]
        
        for char in chars {
            if char == currentChar {
                count += 1
            } else {
                compressStr.append(currentChar)
                if count > 1 {
                    compressStr.append("\(count)")
                }
                count = 1
                currentChar = char
            }
        }
        compressStr.append(currentChar)
        if count > 1 {
            compressStr.append("\(count)")
        }
        
        var i = 0
        for char in compressStr {
            chars[i] = char
            i += 1
        }
        return compressStr.count
    }
}
