class Solution {
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var res = [Int]()
        var count = 0
        
        for i in 0..<nums1.count {
            for j in 0..<nums2.count {
                if nums1[i] == nums2[j] {
                    count += 1
                    break
                }
            }
        }
        res.append(count)
        
        count = 0
        for i in 0..<nums2.count {
            for j in 0..<nums1.count {
                if nums2[i] == nums1[j] {
                    count += 1
                    break
                }
            }
        }
        res.append(count)
        
        return res
    }
}