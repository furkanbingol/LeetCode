/**
 * Definition for a Node.
 * struct Node {
 *     int val;
 *     int numChildren;
 *     struct Node** children;
 * };
 */

void treeToarr(struct Node* root,int* arr, int* returnSize){
    if(root != NULL){
        arr[(*returnSize)++] = root->val;
        for(int i = 0; i < root->numChildren; i++){
            treeToarr(root->children[i], arr, returnSize);
        }
    }
}

int* preorder(struct Node* root, int* returnSize) {
    int* arr = malloc(sizeof(int) * 10000);
    *returnSize = 0;
    treeToarr(root, arr, returnSize);
    return arr;
}