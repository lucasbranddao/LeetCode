/// Problem: https://leetcode.com/problems/middle-of-the-linked-list/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        var count = 0
        while currentNode != nil {
            count += 1
            currentNode = currentNode?.next
        }
        currentNode = head
        if count <= 1 { return head }
        for _ in 0...(count/2)-1 {
            currentNode = currentNode?.next
        }
        return currentNode
    }
}
