class Solution {
    func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
        var arr = [Int]()
        var res = [[Int]]()
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                arr.append(grid[i][j])
            }
        }
        
        for i in 0..<k {
            let tmp = arr.last!
            arr.removeLast()
            arr.insert(tmp, at: 0)
        }
        
        var k = 0
        for i in 0..<grid.count {
            var rowArray = [Int]()
            for j in 0..<grid[0].count { 
                rowArray.append(arr[k])
                k += 1
            }
            res.append(rowArray)
        }
        
        return res
    }
}