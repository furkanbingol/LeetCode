class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result: [Int] = []
        
        for i in left...right { 
            if (isSelfDividing(i)) { 
                result.append(i)
            }
        }
        return result
    }
    
    private func isSelfDividing(_ num: Int) -> Bool { 
        let origin = num
        var num = num
        
        if num == 0 { return false }
        
        while (num > 0) {
            let rest = num % 10
            if (rest == 0) { return false }
            if origin % rest != 0 { return false }
            num /= 10
        }
        return true
    }
}
