class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var x = 0
        var y = height.count - 1
        var largestArea = 0
        while (x < y) {
            largestArea = max(largestArea, (y - x) * min(height[x], height[y]))
            if height[x] < height[y] {
                x += 1
            } else {
                y -= 1
            }
        }
        return largestArea
    }
}
