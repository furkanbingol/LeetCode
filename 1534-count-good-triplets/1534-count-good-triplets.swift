class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var cnt = 0
        var i = 0
        
        while i < arr.count - 2 {
            var j = i + 1
            while j < arr.count - 1 {
                var k = j + 1
                while k < arr.count {
                    if abs(arr[i] - arr[j]) <= a &&
                        abs(arr[j] - arr[k]) <= b &&
                        abs(arr[i] - arr[k]) <= c {
                            cnt += 1
                        }
                    k += 1
                }
                j += 1
            }
            i += 1
        }
        
        return cnt
    }
}