class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var arr1 = [Int]()
        var arr2 = [Int]()
        
        var dict1 = [Int : Int]()
        var dict2 = [Int : Int]()
        
        for i in nums1 {
            if !dict1.keys.contains(i) { dict1[i] = 1 }
        }
        for i in nums2 {
            if !dict2.keys.contains(i) { dict2[i] = 1 }
        }
        
        for (i,val) in dict1 {
            if !dict2.keys.contains(i) { arr1.append(i) }
        }
        for (i,val) in dict2 {
            if !dict1.keys.contains(i) { arr2.append(i) }
        }
        
        return [arr1, arr2]
    }
}