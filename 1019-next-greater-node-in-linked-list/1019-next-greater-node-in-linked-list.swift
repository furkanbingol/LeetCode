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
    func nextLargerNodes(_ head: ListNode?) -> [Int] {
        var values = [Int]()
        var res = [Int]()
        var boolArr = [Bool]()       // true: greater, -: lesser
        var criticalIndexs = [Int]()
        var tmp = head
        
        while tmp != nil {
            values.append(tmp!.val)
            tmp = tmp!.next
        }
        
        var i = 1
        boolArr.append(false)
        while i < values.count {
            if values[i] > values[i-1] || i == values.count-1 {
                boolArr.append(true)
                criticalIndexs.append(i)
            }
            else { boolArr.append(false) }
            i += 1
        }

        i = 0
        while i < values.count {
            var flag = false
            var j = 0
            while j < criticalIndexs.count {
                if criticalIndexs[j] > i && values[i] < values[criticalIndexs[j]] {
                    res.append(values[criticalIndexs[j]])
                    flag = true
                    break
                }
                j += 1
            }
            if !flag { res.append(0) }
            i += 1
        }
        
        return res
    }
}