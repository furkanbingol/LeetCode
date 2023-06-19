class Solution {
    func isSameAfterReversals(_ num: Int) -> Bool {
        var str = String(num)
        var doubleReversed = str.reversed().reversed()
        if str.last! == "0" && str.count != 1 { return false }
        return str == doubleReversed
    }
}