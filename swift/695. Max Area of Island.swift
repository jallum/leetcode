class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let ym = grid.count
        guard ym > 0 else {
            return 0
        }
        let xm = grid[0].count
        guard xm > 0 else {
            return 0
        }
        
        var seen : [[Bool]] = (0 ..< ym).map { _ -> [Bool] in [Bool](repeating: false, count: xm) }
        func df(_ x: Int, _ y: Int) -> Int {
            guard x >= 0, y >= 0, x < xm, y < ym else {
                return 0
            }
            guard !seen[y][x] else {
                return 0
            }

            seen[y][x] = true
            guard grid[y][x] > 0 else {
                return 0
            }

            return 1 + df(x + 1, y) + df(x - 1, y) + df(x, y - 1) + df(x, y + 1)
        }
        
        var maxArea = 0
        for y in 0 ..< ym {
            for x in 0 ..< xm {
                maxArea = max(maxArea, df(x, y))
            }
        }
        return maxArea
    }
}
