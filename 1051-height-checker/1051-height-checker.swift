class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var expected = heights.sorted(by: <)
        var cnt = 0
        
        var i = 0 
        while i < heights.count {
            if heights[i] != expected[i] { cnt += 1 }
            i += 1
        }
        
        return cnt
    }
}