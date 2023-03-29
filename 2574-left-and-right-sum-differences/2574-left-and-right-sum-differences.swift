class Solution {
    func leftRigthDifference(_ nums: [Int]) -> [Int] {
        var leftRightDict = [Int : Int]()
        var res = [Int]()
        var k = 0
        var sum = 0
        
        for i in nums {
            leftRightDict[k] = sum      
            sum += i
            k += 1
        }
        
        sum = 0
        for i in nums.reversed() {
            leftRightDict[k] = sum
            sum += i
            k += 1
        }
        
        var index1 = 0
        var index2 = k-1
        for i in 0..<nums.count {
            res.append(abs(leftRightDict[index1]! - leftRightDict[index2]!))
            index1 += 1
            index2 -= 1
        }
        
        return res
    }
}