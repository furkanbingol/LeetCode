class Solution {
    func interpret(_ command: String) -> String {
        var arr = [Character]()
        
        for (i,val) in command.enumerated() {
            if val == "G" {
                arr.append(val)
            } else if val == "(" {
                let index =  command.index(command.startIndex, offsetBy: i+1)
                if command[index] == "a" {
                    arr.append("a")
                    arr.append("l")
                } else {
                    arr.append("o")
                }
            }
        }
        
        return String(arr)    // Character Array ---> String
    }
}