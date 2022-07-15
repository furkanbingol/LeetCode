/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

struct TreeNode* invertTree(struct TreeNode* root){
    if(root == NULL)
        return NULL;
    struct TreeNode *r = invertTree(root->right);
    struct TreeNode *l = invertTree(root->left);
    root->right = l;
    root->left = r;
    return root;
}