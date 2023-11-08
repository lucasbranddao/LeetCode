/// Problem: https://leetcode.com/problems/longest-consecutive-sequence/description/

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var list = nums.sorted()
        var longestLength = 0
        var lastNumber = 0
        var currentLength = 1
        var isFirst = true
        for n in list {
            if isFirst {
                isFirst = false
                currentLength = 1
                lastNumber = n
                if longestLength < currentLength {
                    longestLength = currentLength
                }
                continue
            }
            if lastNumber == n-1 {
                currentLength += 1
                lastNumber = n
                if longestLength < currentLength {
                    longestLength = currentLength
                }
            }
            else if lastNumber != n {
                currentLength = 1
                lastNumber = n
            }
        }
        return longestLength
    }
}
