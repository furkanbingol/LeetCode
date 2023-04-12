class Solution {
    func minNumber(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var arrOne = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        var arrTwo = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        for i in nums1 { arrOne[i-1] += 1 }
        for i in nums2 { arrTwo[i-1] += 1 }
        
        var minOne = 10
        var minTwo = 10
        
        for i in 0..<arrOne.count {
            if arrOne[i] == 1 {
                if i+1 < minOne {
                    minOne = i+1
                }
            }
        }
        for i in 0..<arrTwo.count {
            if arrTwo[i] == 1 {
                if i+1 < minTwo {
                    minTwo = i+1
                }
            }
        }
        for i in 0...8 {
            if arrOne[i] == 1 && arrTwo[i] == 1 { return i+1 }
        }
        
        return (minOne < minTwo ? minOne*10 + minTwo : minTwo*10 + minOne) 
    }
}