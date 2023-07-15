/*
k = 3
nums   = "----->-->"; 
result = "-->----->";

reverse "----->-->" we can get  "<--<-----"
reverse "<--"       we can get  "--><-----"
reverse "<-----"    we can get  "-->----->"
*/

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let i = k % nums.count
        
        reverse(&nums, 0, nums.count-1)
        reverse(&nums, 0, i-1)
        reverse(&nums, i, nums.count-1)
    }
    
    private func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var st = start
        var ed = end
        
        while st < ed {
            let tmp = nums[st]
            nums[st] = nums[ed]
            nums[ed] = tmp
            st += 1
            ed -= 1
        }
    }
}
