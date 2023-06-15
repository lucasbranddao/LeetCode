// Problem: https://leetcode.com/problems/linked-list-cycle

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard var newHead = head, newHead.next != nil else { return false }

        while newHead.next != nil {
            if newHead.val == 10_000 { return true }
            if let next = newHead.next {
                newHead.val = 10_000
                newHead = next
            }
            else {
                return false
            }
        }
        return false
    }
}
