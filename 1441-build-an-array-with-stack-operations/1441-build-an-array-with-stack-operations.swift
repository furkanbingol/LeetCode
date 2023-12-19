class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var res = [String]()
        var i = 1
        var k = 0
        
        while i <= n && k < target.count {
            if res.isEmpty {
                if i != target[k] {
                    res.append("Push")
                    res.append("Pop")
                } else {
                    res.append("Push")
                    k += 1
                }
            } else if i != target[k] {
                res.append("Push")
                res.append("Pop")
            } else if i == target[k] {
                res.append("Push")
                k += 1
            }
            i += 1
        } 
        
        return res
    }
}