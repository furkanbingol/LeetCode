class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict = [Int : Int]()
        
        for i in arr {
            if dict[i] == nil { dict[i] = 1 }
            else { dict[i]! += 1 }
        }
        
        var arr = Array(dict.values)
        arr = arr.sorted(by: <)
        var i = 0
        
        while i < arr.count-1 {
            if arr[i] == arr[i+1] { return false }
            i += 1
        }
        
        return true
    }
}