class Solution {
    func rowAndMaximumOnes(_ mat: [[Int]]) -> [Int] {
        var maxOne = -1
        var i = 0
        var row = 0
        
        while i < mat.count {
            var sum = mat[i].reduce(0, {return $0 + $1} )
            if sum > maxOne {
                maxOne = sum
                row = i
            }
            i += 1
        }

        return [row, maxOne]
    }
}