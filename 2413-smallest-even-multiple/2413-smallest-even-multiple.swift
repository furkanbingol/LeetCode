class Solution {
    func smallestEvenMultiple(_ n: Int) -> Int {
        return n % 2 == 0 ? n : n * 2
    }
}