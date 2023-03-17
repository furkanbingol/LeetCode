class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var arr = nums
        
        arr = arr.sorted(by: >)
        return (arr[0]-1) * (arr[1]-1)
    }
}