class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0
        for p in prices {
            let profit = p - minPrice
            if profit < 0 {
                minPrice = p
            } else if profit > maxProfit {
                maxProfit = profit
            }
        }
        return maxProfit
    }
}
