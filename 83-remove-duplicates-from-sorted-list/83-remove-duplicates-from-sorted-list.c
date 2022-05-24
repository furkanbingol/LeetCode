/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* deleteDuplicates(struct ListNode* head){
    struct ListNode* prev;
    struct ListNode* cur;
    if(head != NULL){
        prev = head;
        cur = head->next;
    }
    else
        return head;
    
    
    while(cur != NULL){
        if(cur->val != prev->val){
            prev->next->val = cur->val;
            prev = prev->next;
        }
        cur = cur->next;
    }
    
    prev->next = NULL;
    return head;
}