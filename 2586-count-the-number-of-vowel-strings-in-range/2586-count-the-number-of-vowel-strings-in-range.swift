class Solution {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        var cnt = left
        var res = 0
        
        while (cnt <= right) {
            var curStr = words[cnt]
            var firstChar = curStr.first
            var lastChar = curStr.last
            
            if ((firstChar == "a" || firstChar == "e" || firstChar == "i" || firstChar == "o" || firstChar == "u") 
                && (lastChar == "a" || lastChar == "e" || lastChar == "i" || lastChar == "o" || lastChar == "u")) 
            { 
                res += 1
            }
            cnt += 1
        }
        return res
    }
}