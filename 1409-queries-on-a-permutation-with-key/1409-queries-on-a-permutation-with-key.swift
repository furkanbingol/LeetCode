class Solution {
    func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
        var arr = queries
        var permutations = [Int]()
        
        for i in 1...m { permutations.append(i) } 
        
        for i in 0..<arr.count {
            let value = findIndex(permutations, arr[i])
            permutations.remove(at: value)
            permutations.insert(arr[i], at: 0)
            arr[i] = value
        }
        
        return arr
    }
    
    private func findIndex(_ arr: [Int], _ target: Int) -> Int {
        var i = 0
        while i < arr.count {
            if arr[i] == target { return i }
            i += 1
        }
        return 0
    }
}