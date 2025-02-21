class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0], curSum = nums[0]
        for i in 1...nums.count-1 {
            curSum = max(nums[i], curSum+nums[i])
            maxSum = max(maxSum, curSum)
        }
        return maxSum
    }
}

