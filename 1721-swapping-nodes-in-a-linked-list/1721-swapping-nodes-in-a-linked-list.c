/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* swapNodes(struct ListNode* head, int k){
    struct ListNode *tmp = head;
    struct ListNode *ch;
    int i = 1;
    int len = 0;
    int temporary;
    
    while(tmp != NULL)
    {
        len++;
        tmp = tmp->next;
    }
    
    tmp = head;
    while(tmp != NULL)
    {
        if(i == k){
            ch = tmp;
            break;
        }
        tmp = tmp->next;
        i++;
    }
    temporary = ch->val;
    tmp = head;
    while(len - k){
        len--;
        tmp = tmp->next;
    }
    
    ch->val = tmp->val;
    tmp->val = temporary;
    return head;
}