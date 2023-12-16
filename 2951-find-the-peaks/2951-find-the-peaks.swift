class Solution {
    func findPeaks(_ mountain: [Int]) -> [Int] {
        var indices = [Int]()
        
        for i in 1..<mountain.count-1 {
            if ((mountain[i-1] < mountain[i]) && (mountain[i+1] < mountain[i])) {
                indices.append(i)
            } 
        }
        
        return indices
    }
}