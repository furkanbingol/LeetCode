class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        if s.count != goal.count { return false }
        
        var doubleStr = s + s
        return doubleStr.contains(goal) 
    }
}