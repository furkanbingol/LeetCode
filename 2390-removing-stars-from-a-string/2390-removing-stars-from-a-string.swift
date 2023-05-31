class Solution {
    func removeStars(_ s: String) -> String {
        var st = ""
        
        for i in s {
            if i != "*" { st.append(i) }
            else { st.removeLast() }
        }
        return st
    }
}
