int maxDepth(struct TreeNode* root){
    if(root == NULL)
        return 0;
    
    int l = maxDepth(root->left);
    int r = maxDepth(root->right);
    if(l > r)
        return (1 + l);
    else 
        return (1 + r);
}
