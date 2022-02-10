private extension Array where Element == Character {
    func frequencyTable() -> [Int] {
        return self.reduce(into: [Int](repeating:0, count:26)) { $0[Int($1.asciiValue!) - 97] += 1 }
    }
}

class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else {
            return false
        }
        
        let c1 = [Character](s1)
        let c2 = [Character](s2)

        let map1 = c1.frequencyTable()
        for i in 0 ... (c2.count - c1.count) {
            let map2 = [Character](c2[i ..< i + c1.count]).frequencyTable()
            if map1 == map2 {
                return true
            }
        }
        return false
    }
}
