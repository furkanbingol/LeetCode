class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else { return "" }

        let gcdLength = gcd(x: str1.count, y: str2.count)
        let result = String(str1[str1.startIndex ..< str1.index(str1.startIndex, offsetBy: gcdLength)])

        return result
    }
    
    func gcd(x: Int, y: Int) -> Int {
        return y == 0 ? x : gcd(x: y, y: x % y)
    }
}