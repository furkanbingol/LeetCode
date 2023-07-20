class Solution {
    func minDeletionSize(_ strs: [String]) -> Int {
        var strArr = strs.map { Array($0) }
		var cnt = 0

		for column in 0..<strArr[0].count {
			for row in 0..<strArr.count - 1 {
				if strArr[row][column] > strArr[row + 1][column] {
					cnt += 1
                    break
				}
			}
		}

		return cnt
    }
}