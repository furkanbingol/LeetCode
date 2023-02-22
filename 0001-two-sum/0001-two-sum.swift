class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var i = 0
        while i < nums.count-1 {
            var j = i+1
            while j < nums.count {
                if nums[i] + nums[j] == target {
                    result.append(i)
                    result.append(j)
                    return result
                }
                j += 1
            }
            i += 1
        }
        return result
    }
}