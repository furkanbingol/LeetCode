class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var arr = [Int]()
        
        for char in operations {
            let index = char.index(char.startIndex, offsetBy: 0)
            
            if (char[index] >= "0" && char[index] <= "9") || (char[index] == "-") {
                arr.append(Int(atoi(char)))
            } else if char == "C" {
                arr.removeLast()
            } else if char == "D" {
                arr.append(arr.last! * 2)
            } else {
                var len = arr.count
                arr.append(arr[len-1] + arr[len-2])
            }
        }
        
        return arr.reduce(0) { return $0 + $1 }
    }
}