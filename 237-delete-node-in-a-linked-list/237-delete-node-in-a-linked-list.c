/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

void deleteNode(struct ListNode* node) {
    int t = node->val;
    int c = 0;
    struct ListNode* prev = node;
    while(node->next != NULL)
    {
        if (c != 0)
            prev = prev->next;
        node->val = node->next->val;
        node->next->val = t;
        node = node->next;
        c = 1;
    }
    prev->next = NULL;
    free(node);
}