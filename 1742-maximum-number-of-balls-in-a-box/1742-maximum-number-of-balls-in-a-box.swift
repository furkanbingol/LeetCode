class Solution {
    func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
        var box = [Int: Int]()    // dictionary
        
        for i in lowLimit...highLimit {
            var temp = i, n = 0
            while temp > 0 {
                n += temp % 10
                temp /= 10
            }
            box[n, default: 0] += 1
        }
        return box.values.max()!
    }
}