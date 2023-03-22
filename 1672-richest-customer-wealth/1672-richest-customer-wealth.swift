class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maxWealth = 0
        
        for account in accounts {
            var sum = account.reduce(0, {return $0 + $1})
            if sum > maxWealth {
                maxWealth = sum
            }
        }
        
        return maxWealth
    }
}