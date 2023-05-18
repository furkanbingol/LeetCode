class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var res: [Bool] = []
        var arr = candies
        var maxCandy = candies[0]
        
        for i in 1..<candies.count {
            if candies[i] > maxCandy { maxCandy = candies[i] }
        }
        
        for i in candies {
            if i + extraCandies >= maxCandy {
                res.append(true)
            } else {
                res.append(false)
            }
        }
        
        return res
    }
}