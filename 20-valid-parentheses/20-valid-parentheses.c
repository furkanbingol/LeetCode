#include <stdlib.h>

typedef struct node{
    char c;
    struct node *next;
}NODE;

NODE* getNode(char data)
{
    NODE* newNode = (NODE*)malloc(sizeof(NODE));
    newNode->c = data;
    newNode->next = NULL;
    return (newNode);
}

void push(NODE **head, char x)
{
    NODE* newNode = getNode(x);
    newNode->next = (*head);
    (*head) = newNode;
}

void pop(NODE **head)
{
    NODE* tmp = (*head);
    if(*head == NULL)
        return ;
    else{
        (*head) = (*head)->next;
        free(tmp);
    }
}

bool isValid(char * s){
    NODE *head = NULL;
    int i = 0;
    char k;
    
    while(s[i])
    {
        if(s[i] == '(' || s[i] == '[' || s[i] == '{')
            push(&head,s[i]);
        else
        {
            if(head == NULL) //stack is empty
                return false; 
            k = head->c;
            if((s[i] == ')' && k == '(') || (s[i] == ']' && k == '[')
               || (s[i] == '}' && k == '{'))
            {
                pop(&head);
            }
            else
                return false;
        }
        i++;
    }
    if(head == NULL)
        return true;
    return false;
}
