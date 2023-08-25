class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var less = [Int]()
        var equal = [Int]()
        var greater = [Int]()
        var res = [Int]()
        
        for i in nums {
            if i < pivot { less.append(i) } 
            else if i == pivot { equal.append(i) } 
            else { greater.append(i) }
        }
        
        for i in less { res.append(i) }
        for i in equal { res.append(i) }
        for i in greater { res.append(i) }
        
        return res
    }
}