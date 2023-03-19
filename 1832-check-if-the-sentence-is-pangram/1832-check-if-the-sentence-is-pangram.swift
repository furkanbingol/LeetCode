class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var dictionary = [Character : Int]()
        
        for i in sentence {
            if dictionary[i] == nil {
                dictionary[i] = 1
            } else {
                dictionary[i]! += 1
            }
        }
        
        return dictionary.count == 26 ? true : false
    }
}