class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var v = n
        var c = 0
        while v > 0 {
            v &= v - 1
            c += 1
        }
        return c
    }
}
