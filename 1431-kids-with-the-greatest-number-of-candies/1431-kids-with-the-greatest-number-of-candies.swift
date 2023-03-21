class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var res: [Bool] = []
        var sortedArr = candies
        
        sortedArr = sortedArr.sorted(by: >)
        var maxCandy = sortedArr[0]
        
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