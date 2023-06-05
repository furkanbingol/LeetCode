class Solution {
    func findColumnWidth(_ grid: [[Int]]) -> [Int] {
        var res = [Int]()
        var i = 0

        // WE CANNOT WRITE i < grid[i].count
        while i < grid[0].count {
            var j = 0
            var max = 0
            while j < grid.count {
                let val = findLength(grid[j][i])
                if val > max {
                    max = val
                }
                j += 1
            }
            res.append(max)
            i += 1
        }
    
        return res
    }
    
    private func findLength(_ num: Int) -> Int {
        var digitNum = 1
        var tmp = num
        
        if num < 0 {
            digitNum += 1
            tmp *= -1
        }
        
        while tmp > 9 {
            digitNum += 1
            tmp /= 10
        }
        
        return digitNum
    }
}