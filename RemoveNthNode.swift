class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var nodes = [ListNode]()
        var current = head
        
        while current != nil {
            nodes.append(current!)
            current = current?.next
        }
        
        let indexToRemove = nodes.count - n
        
        if indexToRemove == 0 {
            return head?.next
        }
        
        nodes[indexToRemove - 1].next = nodes[indexToRemove].next
        
        return head
    }
}
