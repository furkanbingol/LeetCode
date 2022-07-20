/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

struct TreeNode* insertIntoBST(struct TreeNode* root, int val){
    struct TreeNode *head = root;
    struct TreeNode *new;
    new = (struct TreeNode *)malloc(sizeof(struct TreeNode));
    new->val = val;
    new->right = NULL;
    new->left = NULL;
    
    if(!root)
        return (root = new);
    
    if(root->val < new->val){
        if(root->right == NULL){
            root->right = new;
            return head;
        }
        root = root->right;
    } 
    else{
        if(root->left == NULL){
            root->left = new;
            return head;
        }
        root = root->left;
    } 
   
    while(root->right || root->left){
        if(root->val < new->val){
            if(root->right == NULL){
                root->right = new;
                return head;
            }
            root = root->right;
        }
        else{
            if(root->left == NULL){
                root->left = new;
                return head;
            }
            root = root->left;
        }
    }
    if(root->val < new->val)
        root->right = new;
    else if(root->val > new->val)
        root->left = new;
    return head;
}