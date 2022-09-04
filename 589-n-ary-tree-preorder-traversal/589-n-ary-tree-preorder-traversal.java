/*
// Definition for a Node.
class Node {
    public int val;
    public List<Node> children;

    public Node() {}

    public Node(int _val) {
        val = _val;
    }

    public Node(int _val, List<Node> _children) {
        val = _val;
        children = _children;
    }
};
*/

class Solution {
    public List<Integer> preorder(Node root) {
        List<Integer> list = new ArrayList<>();
        preorderTraverse(root, list);
        return list;
    }
    
    public void preorderTraverse(Node root, List<Integer> list) {
        if (root == null)
            return ;
        list.add(root.val);
        int i = 0;
        while (i < root.children.size()){
            preorderTraverse(root.children.get(i), list);
            i++;
        }
    }
}