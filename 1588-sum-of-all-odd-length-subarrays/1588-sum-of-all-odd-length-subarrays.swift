class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var res = 0
        var n = arr.count;
        var i = 0
        
        while i < n {
            res += ((i + 1) * (n - i) + 1) / 2 * arr[i]
            i += 1
        }
        return res
    }
}