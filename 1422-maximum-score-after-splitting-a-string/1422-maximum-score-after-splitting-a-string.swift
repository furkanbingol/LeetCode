class Solution {
    func maxScore(_ s: String) -> Int {
        var result = 0
        var leftZeros = 0
        var rightOnes = 0
        var arr = Array(s)
        
        for i in 0..<arr.count {
            if arr[i] == "1" { rightOnes += 1 }
        }
        
        // left  -> zeros
        // right -> ones
        for i in 0..<arr.count-1 {
            if arr[i] == "0" { leftZeros += 1 }
            else { rightOnes -= 1 }
            
            if leftZeros + rightOnes > result {
                result = leftZeros + rightOnes 
            }
        }
        
        return result
    }
}