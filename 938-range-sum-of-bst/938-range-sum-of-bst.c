/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

void preOrder(struct TreeNode* root, int low, int high, int *sum){
    if(root == NULL) return;
    if((root->val >= low) && (root->val <= high))
        *sum += root->val;
    if(root->left != NULL)
        preOrder(root->left,low,high,sum);
    if(root->right != NULL)
        preOrder(root->right,low,high,sum);
}

int rangeSumBST(struct TreeNode* root, int low, int high){
    int sum = 0;
    preOrder(root,low,high,&sum);
    return sum;
}