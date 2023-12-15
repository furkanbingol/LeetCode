class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var dict = [String : Int]()
        var firsts = [String]()
        
        for i in paths {
            let arr = Array(i)
            
            if !dict.keys.contains(arr[0]) { 
                dict[arr[0]] = 1
                firsts.append(arr[0])
            } 
            else { dict[arr[0]]! += 1 }
            
            if !dict.keys.contains(arr[1]) { dict[arr[1]] = 1 } 
            else { dict[arr[1]]! += 1 }
        }

        for (key, val) in dict {
            if val == 1 {
                if !firsts.contains(key) { return key }
            }
        }
        
        return ""
    }
}