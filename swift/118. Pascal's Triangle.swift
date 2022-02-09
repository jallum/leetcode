class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle : [[Int]] = (1...numRows).map {
            [Int](repeating: 0, count: $0)
        }

        for i in 0 ..< numRows {
            for j in 0 ... i {
                var v = 0
                if j == 0 {
                    v = 1
                } else if j == i {
                    v = 1
                } else {
                    v = triangle[i-1][j-1] + triangle[i-1][j]
                }
                triangle[i][j] = v
            }
        }
        
        return triangle
    }
}
