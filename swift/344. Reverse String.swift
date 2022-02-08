class Solution {
    func reverseString(_ s: inout [Character]) {
        var i = 0
        var j = s.count - 1
        while i < j {
            let v = s[i]
            s[i] = s[j]
            s[j] = v
            
            j -= 1
            i += 1
        }
    }
}
