typedef struct {
	int stack1[100];
	int stack2[100];
	int index1;
	int index2;
} MyQueue;


MyQueue* myQueueCreate() {
	MyQueue* obj = malloc(sizeof(MyQueue));
	obj->index1 = -1;
    obj->index2 = -1;
	return obj; 
}

void myQueuePush(MyQueue* obj, int x) {
  obj->stack1[++(obj->index1)] = x;
}

int myQueuePop(MyQueue* obj) {
  if(obj->index2 >= 0){
	  obj->index2--;
	  return obj->stack2[obj->index2 + 1];
  }
  else{
	  int len = obj->index1;
	  for(int i = 0; i < len + 1; i++){
		  obj->stack2[++(obj->index2)] = obj->stack1[obj->index1 - i];
	  }
	  obj->index1 = -1;
	  obj->index2--;
	  return obj->stack2[obj->index2 + 1];
  }
}

int myQueuePeek(MyQueue* obj) {
  if(obj->index2 >= 0)
        return obj->stack2[obj->index2];
  else
		return obj->stack1[0];
}

bool myQueueEmpty(MyQueue* obj) {
  if(obj->index1 >= 0 || obj->index2 >= 0)
	  return 0;
  else
	  return 1;
}

void myQueueFree(MyQueue* obj) {
	free(obj);
	return;  
}

/**
 * Your MyQueue struct will be instantiated and called as such:
 * MyQueue* obj = myQueueCreate();
 * myQueuePush(obj, x);
 
 * int param_2 = myQueuePop(obj);
 
 * int param_3 = myQueuePeek(obj);
 
 * bool param_4 = myQueueEmpty(obj);
 
 * myQueueFree(obj);
*/
