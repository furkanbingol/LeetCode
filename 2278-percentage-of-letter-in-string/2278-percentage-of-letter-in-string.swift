class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        let len = s.count
        var perc = 0
        
        for i in s {
            if i == letter {
                perc += 1
            }
        }
        perc = (perc * 100) / len
        return perc
    }
}