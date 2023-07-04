class Solution {
    func checkString(_ s: String) -> Bool {
        var flag = false
        
        for char in s {
            if char == "b" { flag = true }
            else {
                if flag {
                    if char == "a" { return false}
                }
            }
        }
        
        return true
    }
}