/// Problem: https://leetcode.com/problems/jump-game

class Solution {

    func canJump(_ nums: [Int]) -> Bool {
        var maxPos = nums[0]
        var pos = 0

        while maxPos < nums.endIndex - 1 {
            var updatedMaxPos = maxPos
            for i in pos...maxPos {
                updatedMaxPos = max(updatedMaxPos, nums[i] + i)
            }
            if updatedMaxPos == maxPos {
                return false
            }

            pos = maxPos
            maxPos = updatedMaxPos
        }
        return true
    }

}
