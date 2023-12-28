// You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
// You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. 
// DO NOT allocate another 2D matrix and do the rotation.

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        // First reverse up to down
        let n = matrix.count
        var k = n-1
        
        for i in 0..<n/2 {
            for j in 0..<n {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[k][j]
                matrix[k][j] = tmp
            }
            k -= 1;
        }
        
        // Then, swap the symmetry
        for i in 0..<n {
            for j in (i+1)..<n {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = tmp
            }
        }
        
        // We got the image rotated by 90 degrees(clockwise)
    }
}