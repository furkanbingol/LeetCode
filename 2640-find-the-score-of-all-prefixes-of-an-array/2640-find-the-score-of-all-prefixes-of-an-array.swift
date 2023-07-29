class Solution {
    func findPrefixScore(_ nums: [Int]) -> [Int] {
        var resultArray = [Int]()
        var conversionArray = [Int]()
        var max = -1
        
        for i in nums {
            if i > max { max = i }
            conversionArray.append(i + max)
            let prefixSum = conversionArray.reduce(0, {$0 + $1})
            resultArray.append(prefixSum)
        }
        
        return resultArray
    }
}