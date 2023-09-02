class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var answer = [[Int]]()
        var lostScores = [Int : Int]()
        
        for i in 0..<matches.count {
            let winner = matches[i][0]
            let loser = matches[i][1]
            
            if !lostScores.keys.contains(winner) { lostScores[winner] = 0 }
            
            if !lostScores.keys.contains(loser) { lostScores[loser] = 1 }
            else { lostScores[loser]! += 1 }
        }
        
        var arrOne = [Int]()
        var arrTwo = [Int]()
        for (key,val) in lostScores {
            if val == 0 { arrOne.append(key) }
            else if val == 1 { arrTwo.append(key) }
        }
        
        arrOne = arrOne.sorted(by: <)
        arrTwo = arrTwo.sorted(by: <)
        answer.append(arrOne)
        answer.append(arrTwo)
        
        return answer
    }
}