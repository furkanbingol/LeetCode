class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var arr = [Int](repeating: 0, count: 26)
        
        for char in s {
            let ascii = Int(char.asciiValue!)
            arr[ascii - 97] += 1
        }
        
        for char in t {
            let ascii = Int(char.asciiValue!)
            arr[ascii - 97] -= 1
        }
        
        return arr.allSatisfy({ $0 == 0 }) ? true : false
    }
}