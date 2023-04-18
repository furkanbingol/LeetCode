class Solution {
    func maxDistance(_ colors: [Int]) -> Int {
        var i = 0
        var furthest = 0
        
        while i < colors.count-1 {
            var j = colors.count-1
            while (colors[i] == colors[j] && j > i) { j -= 1 }
            if (j-i > furthest) { furthest = j-i }
            i += 1
        }
        
        return furthest
    }
}