/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */

int maxValueOfArray(int *arr, int len){
    int m = -1;
    
    for(int i = 0; i < len; i++){
        if(arr[i] > m)
            m = arr[i];
    }
    return m;
}

int pairSum(struct ListNode* head)
{
    struct ListNode *tmp = head;
    int i = 0,len = 0,max;
    
    while(tmp){
        len++;
        tmp = tmp->next;
    }
    int *arr;
    arr = (int *)calloc(len/2, sizeof(int));
    
    tmp = head;
    while(tmp){
        if(i < len/2)
            arr[i] = tmp->val;
        else
            arr[len-1-i] += tmp->val; 
        tmp = tmp->next;
        i++;
    }
    max = maxValueOfArray(arr,len/2);
    return max;
}