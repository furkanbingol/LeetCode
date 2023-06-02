class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        let x = coordinates[1][0] - coordinates[0][0];
        let y = coordinates[1][1] - coordinates[0][1];
        
        var i = 2
        while i < coordinates.count {
            if (x * (coordinates[i][1] - coordinates[0][1]) != y * (coordinates[i][0] - coordinates[0][0])) {
                return false
            } 
            i += 1
        }
        
        return true
    }
}