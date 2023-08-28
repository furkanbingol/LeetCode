class Solution {
    func sumOfThree(_ num: Int) -> [Int] {
        if num % 3 != 0 { return [] }
        return [num/3-1, num/3, num/3+1]
    }
}