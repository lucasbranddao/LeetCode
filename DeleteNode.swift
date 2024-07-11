class Solution {
    func deleteNode(_ node: ListNode?) {
        guard let node = node, let nextNode = node.next else {
            return
        }
        node.val = nextNode.val
        node.next = nextNode.next
    }
}
