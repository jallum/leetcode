class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var lastRow = [1]
        var triangle = [lastRow]
        
        for i in 1 ..< numRows {
            var row = [Int](repeating:0, count: i+1)
            row[0] = 1
            row[i] = 1
            for j in 1 ..< i {
                row[j] = lastRow[j-1] + lastRow[j]
            }
            triangle.append(row)
            lastRow = row
        }
        
        return triangle
    }
}
