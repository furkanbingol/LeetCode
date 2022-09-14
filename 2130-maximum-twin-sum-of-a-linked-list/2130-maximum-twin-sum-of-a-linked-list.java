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
    public int pairSum(ListNode head) {
        Stack<Integer> stack = new Stack<>();
        ListNode tmp = head;
        int max = 0;
        int len = 0;
        while(tmp != null){
            len++;
            tmp = tmp.next;
        }
        tmp = head;
        for(int i = 0; i < len/2; i++){     //first half
            stack.push(tmp.val);
            tmp = tmp.next;
        }
        while(!stack.empty()){              //second half
            if(stack.peek() + tmp.val > max)
                max = stack.peek() + tmp.val;
            stack.pop();
            tmp = tmp.next;
        }
        return max;
    }
}