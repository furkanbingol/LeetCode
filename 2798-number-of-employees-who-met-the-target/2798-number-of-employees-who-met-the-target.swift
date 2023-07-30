class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        var cnt = 0
        
        for i in hours {
            if i >= target { cnt += 1}
        }
        
        return cnt
    }
}