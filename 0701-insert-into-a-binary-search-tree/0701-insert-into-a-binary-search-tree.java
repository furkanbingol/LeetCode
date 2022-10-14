/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public void dfs(TreeNode cur, TreeNode node) {
        if(cur == null)
            return ;
        else if(cur.val < node.val && cur.right == null)
            cur.right = node;
        else if(cur.val > node.val && cur.left == null)
            cur.left = node;
        else if(cur.val < node.val)
            dfs(cur.right, node);
        else if(cur.val > node.val)
            dfs(cur.left, node);
    }
    
    public TreeNode insertIntoBST(TreeNode root, int val) {
        TreeNode node = new TreeNode(val);
        if(root == null)
            return node;
        dfs(root, node);
        return root;
    }
}