class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let or = mat.count
        guard or > 0 else {
            return mat
        }
        let oc = mat[0].count
        guard or * oc == r * c else {
            return mat
        }
        
        var newMat: [[Int]] = []
        for ir in 0 ..< r {
            var newRow = [Int](repeating: 0, count: c)
            for ic in 0 ..< c {
                let i = ir * c + ic
                newRow[ic] = mat[i/oc][i%oc]
            }
            newMat.append(newRow)
        }
        
        return newMat
    }
}
