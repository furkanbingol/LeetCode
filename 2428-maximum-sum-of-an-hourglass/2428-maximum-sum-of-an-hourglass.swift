class Solution {
    func maxSum(_ grid: [[Int]]) -> Int {
        var maxRow = grid.count - 3
        var maxColumn = grid[0].count - 3
        var max = 0
        
        for i in 0...maxRow {
            for j in 0...maxColumn {
                let val = sumOfHourGlass(i,j,grid)
                max = val > max ? val : max
            }
        }
        
        return max
    }
    
    private func sumOfHourGlass(_ i: Int,_ j: Int,_ matrix: [[Int]]) -> Int {
        var val = matrix[i][j] + matrix[i][j+1] + matrix[i][j+2] +
                  matrix[i+1][j+1] +
                  matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]
        return val
    }
}