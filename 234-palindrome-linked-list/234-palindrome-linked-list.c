#define MAXSIZE 100000

typedef struct s{
    int val[MAXSIZE];
    int top;
}Stack;

Stack *createStack(){
    Stack *stk = malloc(sizeof(Stack));
    stk->top = 0;
    return stk;
}

void push(Stack* stk, int new_val){
    if(stk->top == MAXSIZE)
    {
        return;
    }
    else{
        stk->val[stk->top++] = new_val;
    }
}

int pop(Stack* stk){
    if(stk->top == 0){
        return;
    }
    else{
        return stk->val[--stk->top];
    }
}

bool isPalindrome(struct ListNode* head){

    struct ListNode* slow = head;
    if(slow->next == NULL){
        return true;
    }
    
    struct ListNode* fast = head;
    Stack* stk;
    stk = createStack();
    
    while(fast && fast->next){

        push(stk, slow->val);
        slow = slow->next;
        fast = fast->next->next;
    }
    if(fast){
        slow = slow->next;
    }
    while(slow){
        int tmp = pop(stk);
        if(tmp!=slow->val){
            return false;
        }
        slow= slow->next;
    }
    return true;
}