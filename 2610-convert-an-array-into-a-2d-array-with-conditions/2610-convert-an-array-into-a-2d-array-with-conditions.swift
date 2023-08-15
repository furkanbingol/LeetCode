class Solution {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var max = 0
        
        for i in nums {
            if i > max { max = i }
        }
        
        var countArr = [Int](repeating: 0, count: max+1)
        var maxRow = 0
        for i in nums {
            countArr[i] += 1
            if countArr[i] > maxRow { maxRow = countArr[i] }
        }
        
        while maxRow > 0 {
            var arr = [Int]()
            
            for (i,val) in countArr.enumerated() {
                if val != 0 {
                    arr.append(i)
                    countArr[i] -= 1
                }
            }
            
            res.append(arr)
            maxRow -= 1
        }
        
        return res
    }
}