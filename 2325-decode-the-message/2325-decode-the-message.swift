class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        var answer = ""
        var currentLetter = 0
        var dict: Dictionary<Character, String> = [" " : " "]

        for char in key {
            if dict[char] == nil {
                dict[char] = String(UnicodeScalar(97+currentLetter)!)
                currentLetter += 1
            }
        }

        message.forEach {
            answer += dict[$0]!
        }

        return answer
    }
}