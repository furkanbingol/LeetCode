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
    int max_depth;  //default: 0
    int ans;        //default: 0
    
    public void dfs(TreeNode cur, int d) {
        if(cur == null)
            return ;
        if(d > max_depth){
            max_depth = d;
            ans = cur.val;
        }
        else if(d == max_depth){
            ans += cur.val;
        }
        dfs(cur.left, d+1);
        dfs(cur.right, d+1);
    }
    
    public int deepestLeavesSum(TreeNode root) {
        dfs(root, 0);
        return ans;
    }
}