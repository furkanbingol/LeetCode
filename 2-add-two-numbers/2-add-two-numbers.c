/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* node(int val){
    struct ListNode* head = (struct ListNode* )malloc(sizeof(struct ListNode));
    head->val = val;
    head->next = NULL;
    return head;
}

struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2){
    struct ListNode* head = node(0);
    struct ListNode* ans = head;
    int sum = 0;
    
    while(l1 != NULL || l2 != NULL || sum){
        if(l1 != NULL)
            sum += l1->val;
        if(l2 != NULL)
            sum += l2->val;
        head->next = node(sum%10);
        sum /= 10;
        head = head->next;
        if(l1 != NULL) l1 = l1->next;
        else l1 = NULL;
        if(l2 != NULL) l2 = l2->next;
        else l2 = NULL ;
    }
    return ans->next;
}