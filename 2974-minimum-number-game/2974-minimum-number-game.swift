class Solution {
    func numberGame(_ nums: [Int]) -> [Int] {
        var arr = nums.sorted(by: <)
        var k = 0
        
        for i in 0..<arr.count/2 {
            let tmp = arr[k]
            arr[k] = arr[k+1]
            arr[k+1] = tmp
            k += 2
        }
        
        return arr
    }
}