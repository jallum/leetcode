class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        for p in prices {
            if p < minPrice {
                minPrice = p
            } else if (p - minPrice) > maxProfit {
                maxProfit = p - minPrice
            } 
        }
        return maxProfit
    }
}
