class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var res = 0
        var len = grid.count
        var i = 0
        var j = grid[0].count - 1
        
        while i < len && j >= 0 {
            if grid[i][j] < 0 {
                res += len - i
                j -= 1
            } else {
                i += 1
            }
        }
        
        return res
    }
}
