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
    public int rangeSumBST(TreeNode root, int low, int high) {
        //Integer sum = 0;  -->immutable object
        //int sum = 0;      -->call by reference DOES'NT work in Java
        MyVariable obj = new MyVariable();
        preorder_traverse(root, low, high, obj);   
        return obj.sum;
    }
    
    public void preorder_traverse(TreeNode root, int low, int high, MyVariable obj) {
        if (root == null)
            return ;
        if (root.val >= low && root.val <= high)
            obj.sum += root.val;
        preorder_traverse(root.left, low, high, obj);
        preorder_traverse(root.right, low, high, obj);
    }
}

class MyVariable {
    int sum;  //default value of int instance variable: 0
}