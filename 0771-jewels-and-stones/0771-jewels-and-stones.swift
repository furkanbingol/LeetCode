class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var cnt = 0
        for j in jewels {
            for s in stones {
                if j == s {
                    cnt += 1
                }
            }
        }
        return cnt
    }
}