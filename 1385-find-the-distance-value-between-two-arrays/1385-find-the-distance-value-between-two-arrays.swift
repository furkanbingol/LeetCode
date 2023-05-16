class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var val = 0
    
        var i = 0
        while i < arr1.count {
            var j = 0
            while j < arr2.count {
                if abs(arr1[i]-arr2[j]) <= d { 
                    break 
                }
                j += 1
            }
            if j == arr2.count { val += 1 }
            i += 1
        }

        return val
    }
}