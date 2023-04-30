class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var arr = [Int]()
        var tmp = num
        
        while tmp > 0 {
            arr.append(tmp % 10)
            tmp /= 10
        }

        arr.reverse()
        
        var i = 0
        while (i < arr.count && arr[i] == 9) { i += 1 }
        if i != arr.count { arr[i] = 9 }
        
        var myString = ""
        _ = arr.map{ 
            myString = myString + "\($0)" 
        }
        let res = Int(myString)
        return res!
    }
}