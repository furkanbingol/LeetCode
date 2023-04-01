class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var c = 0
        var tmp = num
        
        while(tmp > 0)
        {
            if(tmp % 2 == 0) { tmp /= 2 }
            else { tmp -= 1; }
            c += 1
        }
        return c;
    }
}