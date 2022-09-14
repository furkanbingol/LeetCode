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
    public int getDecimalValue(ListNode head) {
        int value = 0;
        int len = 0;
        ListNode tmp = head;
        while (tmp != null){
            tmp = tmp.next;
            len++;
        }
        while(len > 0){
            value += Math.pow(2, len-1) * head.val;
            head = head.next;
            len--;
        }
        return value;
    }
}