class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var hashSet = Set<Int>()
        
        for i in nums { hashSet.insert(i) }
        
        if hashSet.count >= 3 {
            hashSet.remove(hashSet.max()!)
            hashSet.remove(hashSet.max()!)
        }
        return hashSet.max()!
    }
}