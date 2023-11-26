class Solution {
    func minLength(_ s: String) -> Int {
        if s.count == 1 { return 1 }
        
        var res = Array(s)
        var i = 0
        
        while i < res.count-1 {
            if (i < res.count-1 && ((res[i] == "A" && res[i+1] == "B") || (res[i] == "C" && res[i+1] == "D"))) {
                res.remove(at: i)
                res.remove(at: i)
                i = 0
            } else {
                i += 1
            }
        }

        return res.count
    }
}