class Solution {
    func totalMoney(_ n: Int) -> Int {
        var money = 0
        var i = 0
        var add = 1
    
        while i < n {
            if i % 7 == 0 {
                add = (i / 7) + 1
            }
            money += add
            add += 1
            i += 1
        }

        return money
    }
}