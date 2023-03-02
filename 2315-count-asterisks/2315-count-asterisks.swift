class Solution {
    func countAsterisks(_ s: String) -> Int {
        var pipes = 0
        var ast = 0
        
        for c in s {
            if c == "|" {
                pipes += 1
            } else if pipes % 2 == 0 {
                if c == "*" {
                    ast += 1
                }
            }
        }
        return ast
    }
}