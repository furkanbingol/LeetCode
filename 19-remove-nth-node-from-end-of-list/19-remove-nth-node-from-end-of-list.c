/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* removeNthFromEnd(struct ListNode* head, int n){
    struct ListNode* tmp = head;
    struct ListNode* del;
    int len = 0, i = 0;
    
    while(tmp != NULL)
    {
        tmp = tmp->next;
        ++len;
    }
    len = len - n;
    tmp = head;
    while(i < (len-1))
    {
        tmp = tmp->next;
        ++i;
    }
    
    if(len == 0) //delete the first node(head)
    {
        del = head;
        head = head->next;
        free(del);
    }
    else
    {
        del = tmp->next;
        tmp->next = tmp->next->next;
        free(del);
    }
    return head;
}