class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var freqArray = [Int](repeating: 0, count: A.count+1)
        var resultArray = [Int]()
        var common = 0
        
        for i in 0..<A.count {
            freqArray[A[i]] += 1
            freqArray[B[i]] += 1
            if freqArray[A[i]] == 2 { common += 1 }
            if freqArray[B[i]] == 2 && A[i] != B[i] { common += 1 }
            resultArray.append(common)
        }
        
        return resultArray
    }
}