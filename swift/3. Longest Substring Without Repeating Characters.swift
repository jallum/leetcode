class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = s.map {$0}
        var tab = [Int](repeating: -1, count: 128)
        var result = 0
        var i = 0
        
        for (j, c) in chars.enumerated() {
            let letter = Int(c.asciiValue!)
            let index = tab[letter]
            
            if index != -1 && index >= i {
                i = index + 1
            }
            
            tab[letter] = j
            result = max(result, j - i + 1)
        }
        
        return result
    }
}
