class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        let mx = image.count
        let my = image[0].count
        var startColor = image[sr][sc]
        
        func df(_ x: Int, _ y: Int) {
            guard x > -1 && x < mx, y > -1 && y < my, image[x][y] == startColor else {
                return
            }

            image[x][y] = newColor
            df(x-1, y)
            df(x+1, y)
            df(x, y-1)
            df(x, y+1)
        }

        if startColor != newColor {
            df(sr, sc)
        }
        
        return image
    }
}
