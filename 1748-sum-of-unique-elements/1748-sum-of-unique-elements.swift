class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var arr = nums
        var res = 0
        var flag = 0
        arr.sort()
        
        for (i,val) in arr.enumerated() {
            if (flag == 0 && i != arr.count-1 && arr[i+1] != arr[i]) {
                res += arr[i]
            } else if i != arr.count-1 && arr[i] == arr[i+1]{
                flag = 1
            } else if i == arr.count-1 && flag == 0 {
                res += arr[i]
            } else {
                flag = 0
            }
        }
        return res
    }
}