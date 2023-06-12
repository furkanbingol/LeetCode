class Solution {
    func isFascinating(_ n: Int) -> Bool {
        var arr = [0,0,0,0,0,0,0,0,0,0]
        var str = String(n)
        
        str += String(n*2)
        str += String(n*3)
        
        for char in str {
            if char == "0" || arr[Int(String(char))!] == 1 {
                return false
            } else {
                arr[Int(String(char))!] += 1
            }
        }
        
        return (arr.reduce(0, {return $0 + $1}) == 9) ? true : false
    }
}