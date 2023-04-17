class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var res = [Character]()
        var cnt = 0
        
        for i in s {
            if i == " " {
                cnt += 1
                if cnt == k {
                    return String(res)
                }
            }
            res.append(i)
        }
        
        return String(res)
    }
}