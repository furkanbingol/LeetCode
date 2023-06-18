class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var strOne = ""
        var strTwo = ""
        
        for str in word1 {
            strOne += str
        }
        for str in word2 {
            strTwo += str
        }
        
        return (strOne == strTwo)
    }
}