class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var res = [Int]()
        
        var i = 0
        while i < arr.count-1 {
            var j = i+1
            var max = -1
            while j < arr.count {
                if arr[j] > max { max = arr[j] }
                j += 1
            }
            
            res.append(max)
            i += 1
        }
        res.append(-1)    // for the last element
        
        return res
    }
}