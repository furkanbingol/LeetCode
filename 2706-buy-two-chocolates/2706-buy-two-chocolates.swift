class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        let arr = prices.sorted(by: <)
        
        if arr[0] + arr[1] == money { return 0 }
        else if arr[0] + arr[1] < money { return money - (arr[0] + arr[1]) }
        return money
    }
}