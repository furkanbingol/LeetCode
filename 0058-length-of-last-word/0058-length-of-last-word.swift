class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arr = s.split(separator: " ")
        var len = arr.count
        return arr[len-1].count
    }
}