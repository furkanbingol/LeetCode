/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

// guess and guessNumber different functions!
class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var l = 1
        var r = n
        
        while l <= r {
            var mid = l + ((r - l)/2)     // because of Overflow! --> low + ((high - low) / 2)
            if guess(mid) == 0 {
                return mid
            } else if guess(mid) == 1 {
                l = mid+1
            } else {
                r = mid-1 
            }
        }
        
        return 1
    }
}