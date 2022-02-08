class Solution {
    func reverseWords(_ s: String) -> String {
        var chars = [Character](s)
        var i = 0
        var si = 0
        
        var r : [Character] = []
        
        while i < chars.count {
            let c = chars[i]
            if c == " " {
                if i - si > 0 {
                    r += chars[si..<i].reversed()
                }
                r.append(c)
                si = i + 1
            }
            i += 1
        }
        if si < chars.count {
            r += chars[si...].reversed()
        }
        
        return String(r)
    }
}
