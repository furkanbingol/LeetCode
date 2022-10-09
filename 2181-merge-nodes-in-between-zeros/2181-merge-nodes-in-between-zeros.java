/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode mergeNodes(ListNode head) {
        ListNode list = null;
        ListNode tmp = null;
        
        int sum = 0;
        head = head.next;
        while(head != null)
        {
            if(head.val == 0)
            {
                ListNode node = new ListNode(sum);
                if(list == null)
                {
                    list = node;
                    tmp = list;
                }
                else{
                    tmp.next = node;
                    tmp = tmp.next;
                }
                sum = 0;
            }
            else
                sum += head.val;
            head = head.next;
        }
        return list;
    }
}