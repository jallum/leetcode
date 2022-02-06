class Solution {
    func reverse(_ x: Int) -> Int {
        var y = x
        var z = 0
        while y != 0 {
            let digit = y % 10
            z = z * 10 + (digit)
            y /= 10
        }
        if z < Int32.min || z > Int32.max {
            return 0
        }
        return z
    }
}
