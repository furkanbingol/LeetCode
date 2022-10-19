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
    int sum = 0;
    
    public int sumEvenGrandparent(TreeNode root) {
        dfs(root, null, null);
        return sum;
    }
    
    public void dfs(TreeNode current, TreeNode parent, TreeNode grandParent) {
        if (current == null) 
            return;
        if (grandParent != null && grandParent.val % 2 == 0)
            sum += current.val;
        
        dfs(current.left, current, parent);
        dfs(current.right, current, parent);
    }
}