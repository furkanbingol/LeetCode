class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        var firstArr = target
        var secondArr = arr
        firstArr = firstArr.sorted(by: <)
        secondArr = secondArr.sorted(by: <)
        return firstArr == secondArr
    }
}