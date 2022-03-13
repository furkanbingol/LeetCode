/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode* getNode(int val)
{
    struct ListNode* newNode = (struct ListNode*)malloc(sizeof(struct ListNode));
    newNode->val = val;
    newNode->next = NULL;
    return (newNode);
}

void addLast(struct ListNode **head, struct ListNode **merged, int val)
{
    struct ListNode* newNode;
    struct ListNode* tmp;
    newNode = getNode((*head)->val);
    
    if (*merged == NULL)
        *merged = newNode;
    else
    {
        tmp = (*merged);
        while(tmp->next != NULL)
            tmp = tmp->next;
        tmp->next = newNode;
     }
    (*head) = (*head)->next;
}

struct ListNode* mergeTwoLists(struct ListNode* list1, struct ListNode* list2){
    struct ListNode* mergedList = NULL;
    
    if(list1 == NULL && list2 != NULL)
        return list2;
    else if(list1 != NULL && list2 == NULL)
        return list1;
    
    while(list1 != NULL && list2 != NULL)
    {
        if(list1->val <= list2->val)
            addLast(&list1,&mergedList,list1->val);
        else
            addLast(&list2,&mergedList,list2->val);
    }
    
    while(list1 != NULL && list2 == NULL)
        addLast(&list1,&mergedList,list1->val);
    while(list1 == NULL && list2 != NULL)
        addLast(&list2,&mergedList,list2->val);
    
    return (mergedList);
}