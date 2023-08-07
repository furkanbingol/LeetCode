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
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var newList = ListNode(head!.val)
        var tmpNewList = newList
        var tmp = head
        
        while tmp!.next != nil {
            let adjacentGCD = gcd(x: tmp!.val,y: tmp!.next!.val)
            tmpNewList.next = ListNode(adjacentGCD)
            tmpNewList = tmpNewList.next!
            tmp = tmp!.next
            tmpNewList.next = ListNode(tmp!.val)
            tmpNewList = tmpNewList.next!
        }
        
        tmpNewList.next = nil
        return newList
    }
    
    private func gcd(x: Int, y: Int) -> Int {
        return y == 0 ? x : gcd(x: y, y: x % y)
    }
}