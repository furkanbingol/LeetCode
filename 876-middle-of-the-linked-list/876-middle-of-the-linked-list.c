/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* middleNode(struct ListNode* head){
    int len = 0;
    struct ListNode* tmp = head;
    
    if(head == NULL)
        return NULL;
    while(tmp->next != NULL)
    {
        ++len;
        tmp = tmp->next;
    }
    ++len;
    len = len/2;
    while (len > 0)
    {
        head = head->next;
        len--;
    }
    return head;
}