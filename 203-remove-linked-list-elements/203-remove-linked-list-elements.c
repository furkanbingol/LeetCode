/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* removeElements(struct ListNode* head, int val){
    struct ListNode* tmp;
    struct ListNode* prev;
    
    if(head == NULL)
        return NULL;
    
    while(head != NULL && head->val == val)
    {
        tmp = head;
        head = head->next;
        free(tmp);
    }
    
    tmp = head;
    while (tmp != NULL)
    {
        if(tmp->val == val)
        {
            prev->next = prev->next->next;
            free(tmp);
            tmp = prev;
        }
        else
        {
            prev = tmp;
        }
        tmp = tmp->next;
    }
    return head;
}