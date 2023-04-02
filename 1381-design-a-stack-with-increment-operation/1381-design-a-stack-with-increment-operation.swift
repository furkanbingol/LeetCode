class CustomStack {
    var maxSize = 0
    var stack = [Int]()
    
    init(_ maxSize: Int) {
        self.maxSize = maxSize
    }
    
    func push(_ x: Int) {
        if stack.count == maxSize {
            return
        }
        stack.append(x)
    }
    
    func pop() -> Int {
        if stack.isEmpty {
            return -1
        }
        return stack.removeLast()
    }
        
    func increment(_ k: Int, _ val: Int) {
        if k >= stack.count {
            for (i,value) in stack.enumerated() {
                stack[i] = value + val
            }
        } else {
            for i in 0..<k {
                stack[i] += val
            }
        }
    }
}

/**
 * Your CustomStack object will be instantiated and called as such:
 * let obj = CustomStack(maxSize)
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * obj.increment(k, val)
 */
