class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var i = 0
        var j = 0
        
        while i < edges.count-1 {
            while j < 2 {
                if j == 0 {
                    if edges[i][j] == edges[i+1][j] || edges[i][j] == edges[i][j+1] { return edges[i][j] }
                }
                else {
                    if edges[i][j] == edges[i+1][j-1] || edges[i][j] == edges[i+1][j] { return edges[i][j] }
                }
                j += 1
            }
            j = 0
            i += 1
        }
        return edges[i][j]
    }
}