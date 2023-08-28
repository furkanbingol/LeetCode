class Solution {
    func furthestDistanceFromOrigin(_ moves: String) -> Int {
        var countL = 0
        var countR = 0
        var countUnderline: Int
        
        for ch in moves {
            if ch == "L" { countL += 1 }
            else if ch == "R" { countR += 1 }
        }
        countUnderline = moves.count - countL - countR
        
        return countR >= countL ? (countUnderline + countR - countL) : (countUnderline + countL - countR) 
    }
}