/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

void traverse(struct TreeNode* root, int *a , int *returnSize)
{
    if(root->left != NULL)
        traverse(root->left,a,returnSize);
    
    if(root->right != NULL)
        traverse(root->right,a,returnSize);
    
    a[(*returnSize)++] = root->val;
}

int* postorderTraversal(struct TreeNode* root, int* returnSize){
    int *a = malloc(sizeof(int) * 100);
    *returnSize = 0;
    
    if(root != NULL)
        traverse(root,a,returnSize);
    
    a = realloc(a, (*returnSize)*sizeof(int));
    return a; 
}