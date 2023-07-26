class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        var arr = [Int](repeating: 0, count: 501)
        
        for i in nums {
            if arr[i] == 0 { arr[i] += 1 }
            else { arr[i] -= 1 }
        }
        
        for i in arr {
            if i != 0 { return false }
        }
        return true
    }
}