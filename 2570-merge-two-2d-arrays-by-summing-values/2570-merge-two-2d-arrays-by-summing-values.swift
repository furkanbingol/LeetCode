class Solution {
    func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
        var res = [[Int]]()
        var dict = [Int : Int]()
        
        dict = findDict(nums1, dict)
        dict = findDict(nums2, dict)
        
        let sortedDict = dict.sorted { $0.key < $1.key }
        
        for i in sortedDict {
            let arr = [i.key,i.value]
            res.append(arr)
        }
        
        return res        
    }
    
    private func findDict(_ nums: [[Int]], _ dict: [Int : Int]) -> [Int : Int] {
        var tmpDict = dict
        
        for i in nums {
            let key = i.first!
            let val = i.last!
            
            if tmpDict.keys.contains(key) {
                tmpDict[key]! += val
            } else {
                tmpDict[key] = val
            }
        }
        
        return tmpDict
    }
}