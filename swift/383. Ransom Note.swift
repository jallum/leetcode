class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var frequency : [Character:Int] = ransomNote.reduce(into:[:], { $0[$1, default:0] += 1})
        for c in magazine {
            guard var count = frequency[c] else {
                continue
            }
            count -= 1
            frequency[c] = count == 0 ? nil : count
            if frequency.isEmpty {
                return true
            }
        }
        return false
    }
}
