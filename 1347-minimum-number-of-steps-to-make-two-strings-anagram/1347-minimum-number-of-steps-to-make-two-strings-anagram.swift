class Solution {
    func minSteps(_ s: String, _ t: String) -> Int {
        var sDict = [Character : Int]()
        var tDict = [Character : Int]()
        var res = 0
        
        for ch in s {
            if !sDict.keys.contains(ch) { sDict[ch] = 1 } 
            else { sDict[ch]! += 1 }
        }
        
        for ch in t {
            if !tDict.keys.contains(ch) { tDict[ch] = 1 } 
            else { tDict[ch]! += 1 }
        }
                
        for (key,val) in sDict {
            if !tDict.keys.contains(key) {
                res += val
            } else {
                if val > tDict[key]! {
                    res += (val - tDict[key]!)
                }
            }
        }
        
        return res
    }
}