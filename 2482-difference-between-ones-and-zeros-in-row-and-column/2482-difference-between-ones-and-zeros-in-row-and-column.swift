class Solution {
    func onesMinusZeros(_ grid: [[Int]]) -> [[Int]] {
        var res = [[Int]]()
        var numberOfOnesRows = [Int](repeating: 0, count: grid.count)
        var numberOfZerosRows = [Int](repeating: 0, count: grid.count)
        var numberOfOnesColumns = [Int](repeating: 0, count: grid[0].count)
        var numberOfZerosColumns = [Int](repeating: 0, count: grid[0].count)
        var index = 0 
        
        // for the Rows
        for i in grid {
            var ones = 0
            var zeros = 0
            for j in i {
                if j == 1 { ones += 1 }
                else { zeros += 1 }
            }
            numberOfOnesRows[index] = ones
            numberOfZerosRows[index] = zeros
            index += 1
        }
        
        // for the Columns
        index = 0
        var i = 0
        var j: Int
        while i < grid[0].count {
            j = 0
            var ones = 0
            var zeros = 0
            while j < grid.count {
                if grid[j][i] == 1 { ones += 1 }
                else { zeros += 1 }
                j += 1
            }
            numberOfOnesColumns[index] = ones
            numberOfZerosColumns[index] = zeros
            index += 1
            i += 1
        }
        
        
        i = 0
        j = 0
        while i < grid.count {
            j = 0
            var arr = [Int]()
            while j < grid[i].count {
                var val = numberOfOnesRows[i] + numberOfOnesColumns[j] - numberOfZerosRows[i] - numberOfZerosColumns[j]
                arr.append(val)
                j += 1 
            }
            res.append(arr)
            i += 1
        }
        
        return res
    }
}