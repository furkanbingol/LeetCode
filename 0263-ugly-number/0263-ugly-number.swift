class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n <= 0 { return false }
        
        var tmp = n
        
        while tmp != 1 {
            if tmp % 2 == 0 {
                tmp /= 2
            } else if tmp % 3 == 0 {
                tmp /= 3
            } else if tmp % 5 == 0 {
                tmp /= 5
            } else {
                break
            }
        }
        return tmp == 1
    }
}