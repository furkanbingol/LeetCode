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
    public boolean isPalindrome(ListNode head) {
        ListNode tmp = head;
        int len = 0;
        while(tmp != null){
            len++;
            tmp = tmp.next;
        }
        Stack<Integer> st = new Stack();
        int flag = len % 2;
        
        for(int i = 0; i < len; i++){
            if(i == len/2 && flag == 1){
                head = head.next;
                continue;
            }
            if(i >= len/2){
                if(!st.isEmpty()){
                    if(st.peek() != head.val)
                        return false;
                    st.pop();
                }
            }
            else
                st.push(head.val);
            head = head.next;
        }
        return true;
    }
}