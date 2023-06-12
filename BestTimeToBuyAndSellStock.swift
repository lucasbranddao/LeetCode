/// Problem: https://leetcode.com/problems/best-time-to-buy-and-sell-stock

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let lastIndex = prices.endIndex-1
        guard lastIndex > 0 else { return 0 }
        var profit = 0
        var minValue = prices[0]
        for i in 1...lastIndex {
            let current = prices[i]
            if current > minValue {
                let value = current - minValue
                if value > profit {
                    profit = value
                }
            }
            if current < minValue {
                minValue = current
            }
        }
        return profit
    }
}
