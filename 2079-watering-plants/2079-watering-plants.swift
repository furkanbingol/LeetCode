class Solution {
    func wateringPlants(_ plants: [Int], _ capacity: Int) -> Int {
        var steps = 0
        var cap = capacity
        
        for (i,val) in plants.enumerated() {
            if cap >= val { 
                steps += 1
            } else {
                cap = capacity
                steps += 2*i + 1          // i + (i + 1) steps
            }
            cap -= val
        }

        return steps
    }
}