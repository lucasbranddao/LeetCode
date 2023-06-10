/// Problem: https://leetcode.com/problems/roman-to-integer/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let lastIndex = nums.endIndex-1
        for (i,n) in nums.enumerated() {
            guard i != lastIndex else { return [] }
            for j in (i+1)...(lastIndex) {
                if n+nums[j] == target {
                    return [i,j]
                }
            }
        }
        return []
    }
}

