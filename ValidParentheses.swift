/// Problem: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        var openedHistory = ""

        for c in s {
            switch c {
                case "(":
                    openedHistory.append("(")
                case "{":
                    openedHistory.append("{")
                case "[":
                    openedHistory.append("[")
                case ")":
                    guard openedHistory.last == "(" else { return false}
                    openedHistory.removeLast()
                case "}":
                    guard openedHistory.last == "{" else { return false}
                    openedHistory.removeLast()
                case "]":
                    guard openedHistory.last == "[" else { return false}
                    openedHistory.removeLast()

                default:
                    break
            }
        }
        return openedHistory.isEmpty
    }
}
