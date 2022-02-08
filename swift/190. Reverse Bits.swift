class Solution {
    func reverseBits(_ n: Int) -> Int {
        var v = n
        var s = 32
        var mask = ~0         
        while s > 0 {
            s >>= 1
            mask ^= (mask << s);
            v = ((v >> s) & mask) | ((v << s) & ~mask);
        }
        return v & 0xFFFFFFFF
    }
}
