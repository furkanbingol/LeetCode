class Solution {
    func checkXMatrix(_ grid: [[Int]]) -> Bool {
        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if col == row || col == grid[0].count - 1 - row {
                    if grid[row][col] == 0 { return false }
                } else {
                    if grid[row][col] != 0 { return false }
                }
            }
        }
        return true
    }
}