class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        var frequencyTable = s.reduce(into:[:]) { $0[$1, default:0] += 1 }
        for c in t {
            guard let count = frequencyTable[c], count > 0 else {
                return false
            }
            frequencyTable[c] = count - 1
        }
        return true
    }
}
