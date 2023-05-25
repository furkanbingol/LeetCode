/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var max = 1
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        
        preorder(root,1)
        return max
    }
    
    private func preorder(_ root: TreeNode?, _ depth: Int) {
        if root == nil {
            return
        }
        
        if depth > max {
            max = depth
        }
        
        preorder(root!.left, depth+1)
        preorder(root!.right, depth+1)
    }
}