class Solution {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        var arr = [Int]()
        var res = 0
        
        for tmpArr in rectangles {
            if tmpArr[0] > tmpArr[1] { arr.append(tmpArr[1]) }
            else { arr.append(tmpArr[0]) }
        }
        
        arr = arr.sorted(by: <)
        var maxLen = arr[arr.count-1]
        
        for i in arr {
            if i == maxLen { res += 1 }
        }
        
        return res
    }
}