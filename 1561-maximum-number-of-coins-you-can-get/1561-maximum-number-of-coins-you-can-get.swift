class Solution {
    func maxCoins(_ piles: [Int]) -> Int {
        var sorted = piles.sorted()
        var step = piles.count/3
        var total = 0
        var count = 1
        
        while count <= step{
            total += sorted[sorted.count - 2*count]
            count += 1
        }
        return total
    }
}
