/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */


class Solution {
    func pairSum(_ head: ListNode?) -> Int {
        var st = Stack()
        var len = 0
        var tmp = head
        var maxSum = 0
        
        while tmp != nil {
            len += 1
            tmp = tmp?.next
        }
        
        tmp = head
        var i = 0
        while i < len/2 {
            st.push(tmp!.val)
            tmp = tmp?.next
            i += 1
        }
        
        while tmp != nil {
            if tmp!.val + st.peek()! > maxSum {
                maxSum = tmp!.val + st.peek()!
            }
            st.pop()
            tmp = tmp?.next
        }
        
        return maxSum
    }
}

struct Stack {
    private var array: [Int] = []

    mutating func push(_ element: Int) {
        array.append(element)
    }

    mutating func pop() -> Int? {
        return array.popLast()
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }

    func peek() -> Int? {
        guard let top = array.last else { return nil }
        return top
    }
}