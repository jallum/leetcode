class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        for i in 0 ..< prices.count {
            for j in (i+1) ..< prices.count {
                maxProfit = max(prices[j] - prices[i], maxProfit)
            }
        }
        return maxProfit
    }
}
