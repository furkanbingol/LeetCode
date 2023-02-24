class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0
        var r = numbers.count-1
        
        while l <= r {
            if numbers[l] + numbers[r] == target {
                return [l+1, r+1]
            } else if numbers[l] + numbers[r] > target {
                r -= 1
            } else {
                l += 1
            }
        }
        return [0, 0]
    }
}