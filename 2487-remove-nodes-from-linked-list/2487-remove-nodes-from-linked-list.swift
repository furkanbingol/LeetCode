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
    func removeNodes(_ head: ListNode?) -> ListNode? {
        var arr = [Int]()
        var resArr = [Int]()
        var tmp = head
        
        while tmp != nil {
            arr.append(tmp!.val)
            tmp = tmp!.next
        }
        
        // Iterate reverse order --> O(n), otherwise O(n^2).
        var i = arr.count-2
        var max = arr[i+1]
        resArr.append(arr[i+1])    // for the last element
        while i >= 0 {
            if arr[i] >= max {
                resArr.append(arr[i])
                max = arr[i]
            }
            i -= 1
        }
        
        i = resArr.count-2
        var newListHead = ListNode(resArr[i+1])
        tmp = newListHead
        
        while i >= 0 {
            tmp!.next = ListNode(resArr[i])
            tmp = tmp!.next
            i -= 1
        }
        
        return newListHead
    }
}