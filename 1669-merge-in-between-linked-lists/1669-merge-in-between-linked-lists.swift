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
    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        var res     = ListNode(list1!.val)
        var tmpRes  = res
        var tmp     = list1!.next
        var tmp2    = list2
        var flag    = true
        var i       = 1
        
        while tmp != nil || tmp2 != nil {
            if i < a {
                tmpRes.next = ListNode(tmp!.val)
                tmpRes = tmpRes.next!
                tmp = tmp!.next
            } else if flag {
                tmpRes.next = ListNode(tmp2!.val)
                tmpRes = tmpRes.next!
                tmp2 = tmp2!.next
                if tmp2 == nil { 
                    flag = false
                    for _ in 0..<(b-a+1) { tmp = tmp!.next }   
                }
            } else {
                tmpRes.next = ListNode(tmp!.val)
                tmpRes = tmpRes.next!
                tmp = tmp!.next
            }
            i += 1
        }
        tmpRes.next = nil
        return res
    }
}