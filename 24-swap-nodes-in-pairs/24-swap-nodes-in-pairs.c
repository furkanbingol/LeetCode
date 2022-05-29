/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* swapPairs(struct ListNode* head){
    if(!head || !head->next)
        return head;    
    
    struct ListNode *temp, *prev = NULL, *curr = head;
    head = head->next;

    while(curr && curr->next)
    {
        temp = curr->next;
        curr->next = curr->next->next;
        temp->next = curr;
        curr = temp;

        if(prev != NULL) 
            prev->next = curr;
        prev = curr->next;
        curr = curr->next->next;
    }
    return head;
}