/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

void traverse(struct TreeNode* root, int arr[], int *returnSize)
{
    arr[(*returnSize)++] = root->val;
    
    if(root->left != NULL)
        traverse(root->left,arr,returnSize);
    
    if(root->right != NULL)
        traverse(root->right,arr,returnSize);
}

int* preorderTraversal(struct TreeNode* root, int* returnSize){
    int *arr = malloc(100 * sizeof(int));
    *returnSize = 0;
    
    if(root != NULL)
        traverse(root,arr,returnSize);
    arr = realloc(arr,(*returnSize) * sizeof(int));
    return arr;
}