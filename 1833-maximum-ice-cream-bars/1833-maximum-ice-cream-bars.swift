// You must solve the problem by 'counting sort'.

class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        var res = 0
        var sorted = [Int](repeating: 0, count: costs.count)
        
        var max = -1
        for i in costs {
            if i > max { max = i }
        }
        
        // Counting Sort
        var counted = [Int](repeating: 0, count: max+1)
        for i in costs { 
            counted[i] += 1 
        }
        
        for i in 1...max {
            counted[i] += counted[i-1]    
        }
        
        for i in 0..<costs.count {
            sorted[counted[costs[i]] - 1] = costs[i]
            counted[costs[i]] -= 1
        }
        
        // Find Max Ice Cream Bars
        var sum = 0
        for i in sorted {
            if sum + i <= coins {
                sum += i
                res += 1
            }
            if res == 0 && sum + i > coins { return 0 }
        }
        
        return res
    }
}