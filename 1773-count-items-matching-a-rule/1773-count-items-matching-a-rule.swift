class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var cnt = 0
        var ruleStatus: Int
        
        if ruleKey == "type" { ruleStatus = 0 }
        else if ruleKey == "color" { ruleStatus = 1 }
        else { ruleStatus = 2 }

        for i in items {
            if i[ruleStatus] == ruleValue { cnt += 1 }
        }
        
        return cnt
    }
}