// FIFO: First In First Out --> Queue

class MyCircularQueue {

    private var queue: [Int]
    private let maxLength: Int
    private var currentLength: Int
    
    init(_ k: Int) {
        self.queue = [Int]()
        self.maxLength = k
        self.currentLength = 0
    }
    
    func enQueue(_ value: Int) -> Bool {
        if currentLength == maxLength { return false }
        queue.append(value)
        currentLength += 1
        return true
    }
    
    func deQueue() -> Bool {
        if currentLength == 0 { return false }
        queue.remove(at: 0)
        currentLength -= 1
        return true
    }
    
    func Front() -> Int {
        return currentLength == 0 ? -1 : queue[0]
    }
    
    func Rear() -> Int {
        return currentLength == 0 ? -1 : queue[currentLength-1]
    }
    
    func isEmpty() -> Bool {
        return currentLength == 0
    }
    
    func isFull() -> Bool {
        return currentLength == maxLength
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */