class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var arr = [0,0,0,0,0]   // b,a,l,o,n
        var cnt = 1_000_000_000
        
        for char in text {
            if char == "b" { arr[0] += 1 }
            else if char == "a" { arr[1] += 1 }
            else if char == "l" { arr[2] += 1 }
            else if char == "o" { arr[3] += 1 }
            else if char == "n" { arr[4] += 1 }
        }
        
        var i = 0
        while i < arr.count {
            if arr[i] == 0 { return 0 }
            if i == 2 || i == 3 {
                if arr[i] / 2 < cnt {
                    cnt = arr[i] / 2
                }
            } else {
                if arr[i] < cnt { 
                    cnt = arr[i]
                }
            }
            i += 1
        }
        
        return cnt
    }
}