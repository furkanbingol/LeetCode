
class SmallestInfiniteSet {
    private var excludeSet = Set<Int>()
    private var smallest = 1
    
    init() {
        
    }
    
    func popSmallest() -> Int {
        excludeSet.insert(smallest)
        let temp = smallest
        smallest += 1
        while excludeSet.contains(smallest) {
            smallest += 1
        }
        return temp
    }
    
    func addBack(_ num: Int) {
        if num <= smallest {
            smallest = num
        }
        excludeSet.remove(num)
    }
}

/**
 * Your SmallestInfiniteSet object will be instantiated and called as such:
 * let obj = SmallestInfiniteSet()
 * let ret_1: Int = obj.popSmallest()
 * obj.addBack(num)
 */