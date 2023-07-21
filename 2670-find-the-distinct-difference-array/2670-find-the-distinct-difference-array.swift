class Solution {
    func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
        var diff = [Int]()
        var prefixesSet = Set<Int>()
        var prefixes = [Int](repeating: 0, count: nums.count)
        var k = 0
        
        for i in nums {
            if !prefixesSet.contains(i) {
                prefixesSet.insert(i)
            }
            prefixes[k] = prefixesSet.count
            k += 1
        }
        
        k = 0
        for i in 0..<nums.count-1 {
            var suffixSet = Set<Int>()
            for j in (i+1)..<nums.count {
                if !suffixSet.contains(nums[j]) {
                    suffixSet.insert(nums[j])
                }
            }
            diff.append(prefixes[k] - suffixSet.count)
            k += 1
        }
        // For the last element
        diff.append(prefixes[k])
        
        return diff
    }
}