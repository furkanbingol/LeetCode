class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var res = [Int]()
        var i = 0
        
        while i < nums.count {
            res = rightShift(res, nums[i], index[i])
            i += 1
        }
        
        return res
    }
    
    private func rightShift(_ res: [Int], _ val: Int, _ index: Int) -> [Int] {
        var arr = res
        
        if arr.isEmpty || index == arr.count {
            arr.append(val)
            return arr
        }
        
        arr.append(val)
        var lastIndex = arr.count-1
        
        while lastIndex > 0 {
            var tmp = arr[lastIndex]
            arr[lastIndex] = arr[lastIndex-1]
            arr[lastIndex-1] = tmp
            lastIndex -= 1
            if lastIndex == index {
                break
            }
        }
        
        return arr
    }
}