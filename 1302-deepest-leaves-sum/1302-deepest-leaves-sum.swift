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
    private var max_depth = 0
    private var sum = 0
    
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        dfs(root, 0)
        return sum
    }
    
    private func dfs(_ root: TreeNode?, _ currentDepth: Int) {
        if root == nil {
            return
        }
        if currentDepth > max_depth {
            max_depth = currentDepth
            sum = root!.val
        }
        else if currentDepth == max_depth {
            sum += root!.val
        }
        dfs(root!.left, currentDepth+1)
        dfs(root!.right, currentDepth+1)
    }
}