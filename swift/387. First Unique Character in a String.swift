class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var table = [Int](repeating: -1, count: 128)
        for (i, c) in s.enumerated() {
            let letter = Int(c.asciiValue!)
            if table[letter] == -2 {
                continue
            } 
            if table[letter] == -1 {
                table[letter] = i
            } else {
                table[letter] = -2
            }
        }
        return table.filter { $0 >= 0 }.min() ?? -1
    }
}
