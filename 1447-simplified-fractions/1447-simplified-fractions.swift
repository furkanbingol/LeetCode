class Solution {
    func simplifiedFractions(_ n: Int) -> [String] {
        var res = [String]()
        if n < 2 { return res }

        for i in 2...n {
            for j in 1..<i {
                if gcd(j, i) == 1 { res.append("\(j)/\(i)") }
            }
        }

        return res
    }

    func gcd(_ a : Int, _ b : Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
}
