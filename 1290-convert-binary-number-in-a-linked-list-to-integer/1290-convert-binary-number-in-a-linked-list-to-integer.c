/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

int getDecimalValue(struct ListNode* head){
    int i = 0;
    int k = 0;
    int exp;
    int a[30];  //2^30
    
    while(head != NULL)
    {
        a[i++] = head->val;
        head = head->next;
    }
    
    i--;    
    exp = 0;
    while(i >= 0)
    {
        if(a[i] == 1)
            k += a[i] * pow(2,exp);
        exp++;
        i--;
    }
    return k;
}