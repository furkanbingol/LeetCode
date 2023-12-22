class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        // res[0]: twice | res[1]: missing
        var res = [Int]()
        var dict = [Int : Int]()
        var nSquare = grid.count * grid.count
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                let val = grid[i][j]
                if !dict.keys.contains(val) { dict[val] = 1 }
                else {
                    dict[val]! += 1
                    if dict[val] == 2 { res.append(val) }
                }
            }
        }
        
        for i in 1...nSquare {
            if !dict.keys.contains(i) { res.append(i) }
        }
        
        return res
    }
}