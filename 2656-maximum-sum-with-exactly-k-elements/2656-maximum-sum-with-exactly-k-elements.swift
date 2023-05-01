class Solution {
    func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
        var arr = nums
        var sum = 0
        var i = 0
        arr = arr.sorted(by: <)
        
        while i < k {
            sum += arr[arr.count-1] + i
            i += 1
        }

        return sum
    }
}