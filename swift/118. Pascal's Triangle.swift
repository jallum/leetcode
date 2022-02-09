class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle : [[Int]] = [[1]]

        for i in 1 ..< numRows {
            let prow = triangle[i-1]
            var row = [Int](repeating:0, count: i+1)
            for j in 0 ... i {
                row[j] = (j > 0 && j < i) ? (prow[j-1] + prow[j]) : 1
            }
            triangle.append(row)
        }
        
        return triangle
    }
}
