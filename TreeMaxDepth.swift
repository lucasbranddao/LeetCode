public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
      self.val = val
      self.left = left
      self.right = right
    }
}
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return dive(treeNode: root, count: 0)
    }
    
    private func dive(treeNode: TreeNode?, count: Int) -> Int {
        guard treeNode != nil else {
            return count
        }

        return max(dive(treeNode: treeNode?.left, count: count+1), dive(treeNode: treeNode?.right, count: count+1))
    }
}
