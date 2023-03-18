class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var x = 0

        for i in 0..<operations.count {
            let curStr = operations[i]
            var index1 = curStr.index(curStr.startIndex, offsetBy: 0)
            var index2 = curStr.index(curStr.startIndex, offsetBy: 1)
        
            if curStr[index1] == "+" || curStr[index2] == "+" {
                x += 1
            } else {
                x -= 1
            }
        }

        return x
    }
}