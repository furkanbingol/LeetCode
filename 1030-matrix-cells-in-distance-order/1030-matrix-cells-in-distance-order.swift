class Solution {
    func allCellsDistOrder(_ rows: Int, _ cols: Int, _ rCenter: Int, _ cCenter: Int) -> [[Int]] {
        var dict = [[Int] : Int]()
        var res = [[Int]]()
        let givenRC = (rCenter, cCenter)
        
        for i in 0..<rows {
            for j in 0..<cols {
                let cd = (i, j)
                let distance = getDistance(givenRC.0, givenRC.1, cd.0, cd.1)
                dict[[i,j]] = distance
            }
        }
        
        // Sort dictionary by values
        let sortedDict = dict.sorted { $0.value < $1.value }
        for (key,value) in sortedDict {
            res.append(key)    // key: [Int]
        }
        
        return res
    }
    
    private func getDistance(_ rOne: Int, _ cOne: Int, _ rTwo: Int, _ cTwo: Int) -> Int {
        return abs(rOne - rTwo) + abs(cOne - cTwo)
    }
}