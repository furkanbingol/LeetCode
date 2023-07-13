class Solution {
    func minimizedStringLength(_ s: String) -> Int {
        var st = Set<Character>()
        
        for char in s {
            st.insert(char)
        }
        return st.count
    }
}