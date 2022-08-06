/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

int traverse(struct TreeNode *root,int *sum){
    if(!root)
        return 0;
    if(root->left && !root->left->left && !root->left->right)
        *sum += root->left->val;
    traverse(root->left,sum);
    traverse(root->right,sum);
    return 0;
}

int sumOfLeftLeaves(struct TreeNode* root){
    int sum = 0;
    traverse(root,&sum);
    return sum;
}