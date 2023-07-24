class Solution {
    func isGood(_ nums: [Int]) -> Bool {
        var maxNumber = -1
        for i in nums {
            maxNumber = max(maxNumber, i)
        }
        
        if maxNumber + 1 != nums.count { return false }
        
        let sortedArray = nums.sorted(by: <)
        for i in 1..<sortedArray.count {
            if i == sortedArray.count-1 {
                if sortedArray[i] != sortedArray[i-1] { return false }
            } else {
                if sortedArray[i] == sortedArray[i-1] { return false }
            }
        }
        
        return true
    }
}