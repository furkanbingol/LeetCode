class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        if groupSizes.count == 1 { return [[0]] }
        
        var res = [[Int]]() 
        var arr = groupSizes
        
        for i in 0..<arr.count {
            if arr[i] == -1 { continue }

            let val = arr[i]
            var len = val
            var tmpArr = [Int]()
            
            for j in i..<arr.count {
               if arr[j] == val && len != 0 && arr[j] != -1 {
                   tmpArr.append(j)
                   arr[j] = -1
                   len -= 1
                   if len == 0 { break }
               }
            }
            res.append(tmpArr)
        }
        
        return res
    }
}