class Solution {
    func minSetSize(_ arr: [Int]) -> Int {
        var dict = [Int : Int]()
        var halfLength = arr.count / 2
        var res = 0
        var count = 0
        
        for i in arr {
            if !dict.keys.contains(i) { dict[i] = 1 }
            else { dict[i]! += 1 }
        }
        
        // ## Dictionary Sort by Value ##
        let sortedDict = dict.sorted { $0.value > $1.value }
        // print(sortedDict[0].key)
        // print(sortedDict[0].value)
        
        for i in sortedDict {
            res += i.value
            count += 1
            if res >= halfLength { break }
        }
        return count
    }
}