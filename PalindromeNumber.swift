/// Problem: https://leetcode.com/problems/palindrome-number/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        let string = "\(x)"
        let lhs = Array(string)
        let rhs = Array(string.reversed())

        return rhs == lhs
    }
}
