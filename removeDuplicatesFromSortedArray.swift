/// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var lastAdded: Int? = nil
        var k = 0
        for num in nums {
            if (num == lastAdded) { continue }
            else {
                lastAdded = num
                nums[k] = num
                k += 1
            }
        }
        return k
    }
}
