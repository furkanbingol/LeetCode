class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var res = [String]()
        var heights = heights
        
        var i = 0
        var dictionary = [Int : String]()    // heights are unique, names are not!
        
        while i < names.count {
            dictionary[heights[i]] = names[i]
            i += 1
        }
        
        heights = heights.sorted(by: >)
        
        for i in heights {
            for (j, val) in dictionary {    // j: Int, val: String
                if i == j {
                    res.append(val)
                    break
                }
            }
        }
        
        return res
    }
}