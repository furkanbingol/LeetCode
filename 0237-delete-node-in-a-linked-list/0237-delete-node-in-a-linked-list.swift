/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        if node!.next!.next == nil {
            node!.next = nil
            return 
        }
        node!.next = node!.next!.next
    }
}

// 4 5 1 9
// 4 1 1 9
// 4 1 9