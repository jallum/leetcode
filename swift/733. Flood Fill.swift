class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        let startColor = image[sr][sc]
        guard startColor != newColor else {
            return image
        }

        var image = image
        let mx = image.count - 1
        let my = image[0].count - 1

        func df(_ x: Int, _ y: Int) {
            guard image[x][y] == startColor else {
                return
            }
            image[x][y] = newColor
            if x > 0  { df(x-1, y) }
            if x < mx { df(x+1, y) }
            if y > 0  { df(x, y-1) }
            if y < my { df(x, y+1) }
        }

        df(sr, sc)
        
        return image
    }
}
