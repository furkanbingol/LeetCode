class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        var res: Int
        var str = ""
        
        for ch in s {
            let val = (Int(ch.asciiValue!) - 97) + 1    // 97 == 'a'
            str += String(val)
        }
        
        res = str.reduce(0) { Int(String($0))! + Int(String($1))! }
        
        for i in 1..<k {
            res = digitSum(res)
        }
        
        return res
    }
    
    private func digitSum(_ num: Int) -> Int {
        if num < 10 { return num }
        var tmp = num
        var sum = 0
        
        while tmp > 0 {
            sum += tmp % 10
            tmp /= 10
        }
        
        return sum
    }
}