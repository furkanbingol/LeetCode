class Solution {
    func countVowelStrings(_ n: Int) -> Int {
        return (n + 1) * (n + 2) * (n + 3) * (n + 4) / 24
    }
}