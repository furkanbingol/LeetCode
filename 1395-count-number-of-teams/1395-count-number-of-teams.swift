class Solution {
    func numTeams(_ rating: [Int]) -> Int {
        var count = 0
        
        for i in 0..<rating.count-2 {
            for j in (i+1)..<rating.count-1 {
                for k in (j+1)..<rating.count {
                    if (rating[i] < rating[j] && rating[j] < rating[k]) ||
                        (rating[i] > rating[j] && rating[j] > rating[k]) {
                            count += 1
                    }
                }
            }
        }
        
        return count
    }
}