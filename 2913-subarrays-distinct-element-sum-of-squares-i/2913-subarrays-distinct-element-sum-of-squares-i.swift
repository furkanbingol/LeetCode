class Solution {
    func sumCounts(_ nums: [Int]) -> Int {
        if nums.count == 1 { return 1 }
        
        var sum = 0
        var n = nums.count-1
        
        for i in 0...(n-1) {
            var tmpSet = Set<Int>()
            tmpSet.insert(nums[i])
            sum += (tmpSet.count)*(tmpSet.count)
            
            for j in (i+1)...n {
                tmpSet.insert(nums[j])
                sum += (tmpSet.count)*(tmpSet.count)
            }
        }
        
        sum += 1   // for the last element
        return sum
    }
}