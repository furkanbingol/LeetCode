class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var res = 0
        var i = 0
        var j = mat[0].count-1
        
        while i < mat.count {
            if i != j {
                res += (mat[i][i] + mat[i][j])
            } else {
                res += mat[i][i]
            }
            i += 1
            j -= 1
        }
        return res
    }
}