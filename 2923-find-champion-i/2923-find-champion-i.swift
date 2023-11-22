class Solution {
    func findChampion(_ grid: [[Int]]) -> Int {
        var n = grid.count
        
        for i in 0..<n {
            let sum = grid[i].reduce(0, +)
            if sum == n-1 { return i }
        }
        
        return 0
    }
}