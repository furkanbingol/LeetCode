class Solution {
    func triangularSum(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            if nums.count == 1 { return nums[0] }
            else { return (nums[0] + nums[1]) % 10}
        }
        
        var arr = [Int]()
        var stepCount = nums.count - 2
        for i in 0..<nums.count-1 {
            arr.append((nums[i] + nums[i+1]) % 10)
        }
        
        var k = stepCount
        for i in 0..<stepCount {
            for j in 0..<k {
                arr[j] = (arr[j] + arr[j+1]) % 10
            }
            k -= 1
        }
        
        return arr.first!
    }
}