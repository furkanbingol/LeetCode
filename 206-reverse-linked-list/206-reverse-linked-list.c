/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* reverseList(struct ListNode* head){
    struct ListNode* c;
    struct ListNode* k;
    struct ListNode* nexttt;
    
    if(head == NULL)
        return NULL;
    
    k = head;
    c = head->next;
    head->next = NULL;
    while(c != NULL)
    {
        nexttt = c->next;
        c->next = k;
        k = c;
        c = nexttt;
    }
    head = k;
    return head; 
}