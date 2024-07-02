class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        guard var currentPrice = prices.first else {
            return 0
        }
        for price in prices {
            if price > currentPrice {
                profit += (price-currentPrice)
            }
            currentPrice = price
        }
        return profit
    }
}
