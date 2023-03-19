class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        if s.isEmpty { return false }
        if s.count == 1 { return true }
        
        var dictionary = [Character : Int]()
        
        for i in s {
            if dictionary[i] == nil {
                dictionary[i] = 1
            } else {
                dictionary[i]! += 1
            }
        }
        
        var firstValue = dictionary.first!.value
        
        for (key,value) in dictionary {
            if value != firstValue {
                return false
            }
        }
        
        return true
    }
}