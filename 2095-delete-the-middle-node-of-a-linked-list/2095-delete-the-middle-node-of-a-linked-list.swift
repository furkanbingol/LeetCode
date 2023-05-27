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
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return nil
        }
        
        var cnt = 0
        var mid = 0
        var tmp = head
        
        while tmp != nil {
            mid += 1
            tmp = tmp!.next
        }
        
        mid /= 2
        tmp = head
        
        while cnt < mid-1 {
            tmp = tmp!.next
            cnt += 1
        }
        tmp!.next = tmp!.next!.next
        return head
    }
}