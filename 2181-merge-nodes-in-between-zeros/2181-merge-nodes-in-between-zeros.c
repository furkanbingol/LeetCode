/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

struct ListNode* getNode(int x)
{
    struct ListNode* newNode = malloc(sizeof(struct ListNode));
    newNode->val = x;
    newNode->next = NULL;
    return newNode;
}

struct ListNode* mergeNodes(struct ListNode* head){
    struct ListNode* h1;
    struct ListNode* tmp;
    int sum = 0;
    int c = 0;
    
    
    while(head != NULL)
    {
        if(head->val == 0)
        {
            if(sum != 0)
            {
                if(c == 0)   //only once
                { 
                    h1 = getNode(sum);
                    tmp = h1;
                    c = 1;
                }
                else
                {
                    tmp->next = getNode(sum);
                    tmp = tmp->next;
                }
            }
            sum = 0;
        }
        else
        {
            sum += head->val;
        }
        head = head->next;
    }
    
    return h1;
}