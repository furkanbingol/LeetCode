class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var arr = [Int](repeating: 0, count: n+1)
        var res = [Int]()
        
        for i in nums {
            arr[i] = 1
        }
        
        for (i,val) in arr.enumerated() {
            if val == 0 && i != 0 {
                res.append(i)
            }
        }
        
        return res
    }
}