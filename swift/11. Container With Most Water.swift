class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var x = 0
        var y = height.count - 1
        var largestArea = 0
        while (x < y) {
            let xh = height[x]
            let yh = height[y]
            largestArea = max(largestArea, (y - x) * min(xh, yh))
            if xh < yh {
                x += 1
            } else {
                y -= 1
            }
        }
        return largestArea
    }
}
