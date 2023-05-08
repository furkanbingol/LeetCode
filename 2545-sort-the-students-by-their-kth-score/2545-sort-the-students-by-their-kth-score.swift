class Solution {
    func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
        var max = -1 
        var res = [[Int]]()
        var dict = [Int : Int]()
        
        var i = 0 
        while i < score.count {
            dict[score[i][k]] = i
            i += 1
        }
        
        // sort dict looking by keys
        var sortedKeys = dict.keys.sorted(by: >)
        
        for key in sortedKeys {
            res.append(score[dict[key]!])
        }
        
        return res
    }
}