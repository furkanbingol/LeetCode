class Solution {
    func countTestedDevices(_ batteryPercentages: [Int]) -> Int {
        let n = batteryPercentages.count
        var arr = batteryPercentages
        var testCount = 0
        
        for i in 0..<n {
            if arr[i] > 0 {
                testCount += 1
                if i+1 == n { break }
                
                let val = arr[i]
                for j in (i+1)..<n {
                    arr[j] = max(0, arr[j]-1)
                }
            }
        }
        
        return testCount
    }
}