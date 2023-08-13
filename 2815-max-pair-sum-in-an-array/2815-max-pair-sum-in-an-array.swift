class Solution {
    func maxSum(_ nums: [Int]) -> Int {
        var max = -1
        var arr = [Int]()
        
        for i in nums {
            arr.append(findMaxDigit(i))
        }
        
        for i in 0..<nums.count-1 {
            var j = i+1
            while j < nums.count {
                if arr[i] == arr[j] && nums[i] + nums[j] > max {
                    max = nums[i] + nums[j]
                }
                j += 1
            }
        }
        
        return max
    }
    
    private func findMaxDigit(_ num: Int) -> Int {
        var tmp = num
        var max = 0
        
        while tmp > 0 {
            if tmp % 10 > max {
                max = tmp % 10
            }
            tmp /= 10
        } 
        
        return max
    }
}