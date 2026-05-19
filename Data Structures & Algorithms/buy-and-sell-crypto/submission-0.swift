class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minBuy = Int.max
        var maxSell = 0

        for i in prices.indices {
            minBuy = min(prices[i], minBuy)
            maxSell = max(maxSell, prices[i]-minBuy)
        }

        return maxSell
    }
}
