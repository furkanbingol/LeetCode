class KthLargest {
    private var arr = [Int]()
    private var kTh = 0
    
    init(_ k: Int, _ nums: [Int]) {
        self.kTh = k-1
        self.arr = nums.sorted(by: >)
    }
    
    func add(_ val: Int) -> Int {
        arr.append(val)
        arr = arr.sorted(by: >)
        return arr[kTh]
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */