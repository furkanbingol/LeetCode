class Solution {
    func minimumSum(_ num: Int) -> Int {
        var arr = [Int]()
        var tmp = num    
        var res: Int
        
        while tmp > 0 {
            arr.append(tmp % 10)
            tmp /= 10
        }
        arr = arr.sorted(by: <)
        res = (arr[0] * 10 + arr[3]) + (arr[1] * 10 + arr[2])
        return res
    }
}