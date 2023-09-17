class Solution {
    func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {
        var sum = 0
        
        for (i,val) in nums.enumerated() {
            if countBits(i) == k { sum += val }
        }
        
        return sum
    }
    
    private func countBits(_ num: Int) -> Int {
        var count = 0
        var tmp = num
        
        while tmp != 0 {
            if tmp % 2 == 1 { count += 1 }
            tmp /= 2
        }
        
        return count
    }
}