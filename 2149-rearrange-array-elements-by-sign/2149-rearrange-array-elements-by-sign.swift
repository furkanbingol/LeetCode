class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var pos = [Int]()
        var neg = [Int]()
        var rearrangeArr = [Int]()
        
        for i in nums {
            if i > 0 { pos.append(i) }
            else { neg.append(i) }
        }
        
        for i in 0..<pos.count {
            rearrangeArr.append(pos[i])
            rearrangeArr.append(neg[i])
        }
        
        return rearrangeArr
    }
}