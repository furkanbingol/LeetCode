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
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else { return nil }
        
        var newRoot: TreeNode? = nil
        
        // iterate preorder
        for item in preorder {
            push(item, &newRoot)
        }
        return newRoot
    }
    
    func push(_ item: Int, _ root: inout TreeNode?) {
        guard var root1 = root else {
            root = TreeNode(item)
            return
        }
        if item > root1.val {
            push(item, &root1.right)
        } else if item < root1.val {
            push(item, &root1.left)
        }
    }
}