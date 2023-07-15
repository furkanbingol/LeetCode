class Solution {
    func minPairSum(_ nums: [Int]) -> Int {
        var tmp = nums.sorted(by: <)
        var max = -1
        var i = 0
        var j = tmp.count-1
        
        while i < tmp.count/2 {
            if tmp[i] + tmp[j] > max { max = tmp[i] + tmp[j] }
            i += 1
            j -= 1
        }
        
        return max
    }
}