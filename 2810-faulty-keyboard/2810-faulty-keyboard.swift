class Solution {
    func finalString(_ s: String) -> String {
        var res = ""
        
        for ch in s {
            if ch == "i" { res = String(res.reversed()) } 
            else { res += String(ch) }
        }
        
        return res
    }
}